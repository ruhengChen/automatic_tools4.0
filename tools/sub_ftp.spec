# -*- mode: python -*-

block_cipher = None


a = Analysis(['sub_ftp.py'],
             pathex=['F:\\desktop\\自动化运维工具4.0\\tools'],
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
          name='sub_ftp',
          debug=False,
          strip=False,
          upx=True,
          console=True )
