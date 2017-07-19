import requests
from pyquery import PyQuery as pq
from lxml import etree
import time
import re
import urllib
import logging
import time
import datetime
import traceback

class Logger:
    def __init__(self, logName, logFile):
        self._logger = logging.getLogger(logName)
        handler = logging.FileHandler(logFile, mode='a')
        self._logger.addHandler(handler)
        self._logger.setLevel(logging.INFO)

    def log(self,msg):
        if self._logger is not None:
            self._logger.info(msg)


def get_content(d,existlist):
    
    resultlist = []

    need_id_list = d("table>tbody>tr>td>input")
    for need_id in need_id_list.items():
        resultlist.append(need_id.attr("onclick"))

    bzhflag = 0
    filename = ""

    for page_header in resultlist:
        if page_header in existlist:
            print("exist..." + page_header)
            continue
        print(page_header in existlist)
##        if True:
##            continue
        
        print(existlist)

        with open("exist_url.txt",'a') as f:
            f.write(page_header+"\n")

        
##        print(page_header)
        windows, header, page_id = page_header.split('=')
        header = header+"="+page_id
        header = header.replace("'","")
        page_id = page_id.rstrip("'")
        print(header, page_id)

        
        url = "http://154.233.150.87:8089/SJFF/"+header

##        url = "http://154.233.150.87:8089/SJFF/noticesShow.do?noticeId=12957413032921227"
##        url = "http://154.233.150.87:8089/SJFF/noticesShow.do?noticeId=12263094972451282"
        print(url)
        content_post = {}
        content_post["noticeId"]=page_id
        print(content_post)
        print(url)
        content_html = requests.get(url,headers=slx_header,data=content_post,cookies=r.cookies)
        content_all = pq(content_html.text)
##        print(content_html.text)
        content = content_all("table>tbody>tr")
        for i in content.items():
            content_log.log(i("th").text())
            content_log.log(i("td").text())
            print(i("th").text())
            print(i("td").text())
            isbzh = i("td").text()
            title = i("th").text()
            if title == "附件":
                filename = i("td").text()

            
            if isbzh == "标准化文档更新":
                bzhflag = 1

            if bzhflag == 1:
                print(i("td>a").attr("href"))
                href = i("td>a").attr("href")
                if href:
                    href = "http://154.233.150.87:8089" + href
                    print(href)
                    print(filename)
                    fujian = requests.get(href,headers=slx_header,data=content_post,cookies=r.cookies)
                    with open("../"+filename,'wb') as f:
                        f.write(fujian.content)

        bzhflag = 0
##        break
    
if __name__ == "__main__":
    try:
        ## 读取已爬取的网址
        with open("exist_url.txt",'r') as f:
            existlist = f.readlines()

        ## 读取登陆信息
        with open("web_login.txt",'r') as f:
            data = f.readlines()

        login_dict = {}
        for i in data:
            key,value = i.split("=")
            login_dict[key] = value

        username = login_dict["username"]
        password = login_dict["password"]

        for i in range(len(existlist)):
            existlist[i] = existlist[i].strip()
        print(existlist)


        content_log = Logger("content_log","content.txt")

        ## 登陆网址
        url = "http://154.233.150.87:8089/SJFF/j_spring_security_check"
       
        ## 获取临时cookie
        r = requests.get("http://154.233.150.87:8089/SJFF/")

        print(r.cookies.get("JSESSIONID"))

        cookies = r.cookies.get("JSESSIONID")

        ## 登陆表单
        form_data = {
            "sub_btn":"+登　录+"
            }
        form_data["username"] = username
        form_data["password"] = password
        
        print(form_data)

        ## 登陆头信息
        slx_header ={
            "Host": "154.233.150.87:8089",
            "User-Agent": "Mozilla/5.0 (Windows NT 6.1; rv:49.0) Gecko/20100101 Firefox/49.0",
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Language": "zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3",
            "Accept-Encoding": "gzip, deflate",
            "Referer":"http://154.233.150.87:8089/SJFF/",
            "Connection": "keep-alive",
            "Upgrade-Insecure-Requests": "1"
        }
        ## 模拟登陆
        response = requests.post(url, data=form_data, cookies=r.cookies)
        
        html = requests.get("http://154.233.150.87:8089/SJFF/noticesList.do",cookies=r.cookies)

        d = pq(html.text)
        ## 获取内容信息
        get_content(d,existlist)


        max_page = 0
        pages = d("#PagePanel>span")

        for page in pages.items():
            page_result = page.text()

        reg = '.*: (\d+) / (\d+)'
        reg = re.compile(reg)
        current_page, max_page = re.findall(reg, page_result)[0]
        print(current_page, max_page)

        post_data = {}
        post_data["queryNoticeName"] = ""
        post_data["queryStartTime"]=""
        post_data["queryEndTime"]=""

        ## 获取其他内容
        for i in range(2,int(max_page)+1):
            post_data["pageIndex"]=i
        
            html = requests.post("http://154.233.150.87:8089/SJFF/noticesList.do",data=post_data, cookies=r.cookies)
            d = pq(html.text)
            get_content(d,existlist)
            time.sleep(3)
    ##        break

        ## 记录爬虫日志
        local_time = datetime.datetime.now()
        with open("automatic.log","a") as f :
            f.write(local_time.strftime("%Y-%m-%d %H:%M:%S") + " :: spider success\n")
    except Exception:
        exc_type, exc_value, exc_traceback = sys.exc_info()
        with open("automatic.log","a") as f :
            f.write(repr(traceback.format_exception(exc_type, exc_value, exc_traceback)))

        input()