# -*- mode: python -*-

block_cipher = None


a = Analysis(['spider.py'],
             pathex=['E:\\work\\自动化运维工具4.0\\tools'],
             binaries=[],
             datas=[],
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          name='spider',
          debug=False,
          strip=False,
          upx=True,
          console=True )
