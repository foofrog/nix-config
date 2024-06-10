{ ... }: 

{

  # Set the local Time Zone
  time.timeZone = "Asia/Dhaka";

  # Set locale settings for applications
  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
      "ja_JP.UTF-8/UTF-8"
    ];
  };

}
