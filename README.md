<p align="center">
<picture>
<img width="160" height="160"  alt="XPanel" src="https://raw.githubusercontent.com/amna33mcc/mana1.1/master/logo.png">
</picture>
  </p> 
<p align="center">
<h1 align="center"/>MaNa Cloud</h1>
<h6 align="center">SSH User Management<h6>
</p>

<p align="center">
<img alt="GitHub release (latest by date)" src="https://img.shields.io/github/v/release/amna33mcc/mana1.1">
</p>

## معرفی <br>

مانا کلود پنل یک نرم افزار تحت وب جهت مدیریت اکانت SSH می باشد.

## امکانات <br>

✔️ ایجاد کاربر بدون محدودیت <br>
✔️ اعمال محدودیت در حجم مصرفی و تاریخ انقضا<br>
✔️ قابلیت محاسبه تاریخ انقضا در اولین اتصال<br>
✔️ اعمال محدودیت در چند کاربره بودن اکانت<br>
✔️ مشاهده کاربران آنلاین<br>
✔️ امکان بکاپ گیری از کاربران و ریستور بکاپ<br>
✔️ تنظیم پورت ورود برای پنل<br>
✔️ تنظیم پورت های UDP , SSH در پنل ادمین<br>
✔️ تنظیم آدرس فیک<br>
✔️ محدودیت IP(جلوگیری از ورود کاربران به برخی سایت ها)<br>
✔️ اتصال API<br>
✔️ اطلاعات سیستم(RAM, CPU, HDD)<br>

# نصب

**سیستم عامل مورد نیاز**

<p align="right">
Ubuntu 18+<br>
پیشنهادی :Ubuntu 20
</p>


```
sudo apt update
```
```
sudo apt upgrade
```
```
sudo apt install curl
```

برای نصب دستور زیر را وارد کنید<br>

```
bash <(curl -Ls https://raw.githubusercontent.com/amna33mcc/mana1.1/master/install.sh --ipv4)
```

# آپدیت پنل ادمین

نیازی به نصب مجدد نیست . با این روش فقط پنل ادمین آپدیت می شود . در این روش اطلاعات دیتابیس تغییر نمی کند

```
bash <(curl -Ls https://raw.githubusercontent.com/amna33mcc/mana1.1/master/update-panel.sh --ipv4)
```

# نصب صفحه یوزر


```
bash <(curl -Ls https://raw.githubusercontent.com/amna33mcc/mana1.1/master/userpage.sh --ipv4)
```

# نصب وردپرس

جهت نصب وردپرس دستور زیر را اجرا کنید. بعد از نصب حتما اطلاعات را یادداشت کرده و در مراحل بعدی از آن استفاده کنید

```
bash <(curl -Ls https://raw.githubusercontent.com/amna33mcc/mana1.1/master/install-wp.sh --ipv4)
```

# بلاک کردن آی پی

جهت بلاک کردن آی پی از دستور زیر استفاده کنید

```
bash <(curl -Ls https://raw.githubusercontent.com/amna33mcc/mana1.1/master/block-ir-ip.sh --ipv4)
```


