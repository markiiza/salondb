   M S B A M L   `   `   `  ????G  CBeautySaloon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BeautySaloon.ViewsBeautySaloon.Views  5      %    BeautySaloon.Views.Registration   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ,local clr-namespace:BeautySaloon.Views  5        N? Title$  Registration??5      .??5      ?? .+?5   
   ?? $$??Запись на услугу??6   $??35(?6+   $??0 0 0 25q?69   ?? 5   
   $??10q?6   .+?5      ?? $??Клиент??6   ?? 5      -   5         ??Name$ clientsComboBox??5      ??60   ?? *	Clients+ ?? SelectedItem 6P   ?? *Client+??5      ?? 5      .R?5      ?? ?? 5      ?6"   ?? *
LastName+ ?? 5      ?6"   ?? *	FirstName+5      5      5      ?? 5      $??Услуга??6   ?? 5!      ??6   ?? *
Services+ 68   ?? *	Service+??5"      ?? 5#      .R?5$      ?? ?? 5%      ?6"   ?? *Title+ | ?? 5&      ?6"   ?? *CostWithDiscount+ ?? Mode$ OneWay=? ?? StringFormat$ {0:0.00}??
 р. за ?? 5'      ?6"   ?? *DurationInMunites+$ OneWay=?
 мин.5(      5)      5+      ?? 5.      $??Дата записи??6   (  "System.Windows.Controls.DatePicker  5/      -   5          Name$ serviceDatePicker??5/   3      IsTodayHighlighted$
 True??6   63   ?? 50      $??Время записи??6   )  #MaterialDesignThemes.Wpf.TimePicker  51      -   5          Name$ serviceTimePicker??51   9      	Is24Hours$
 True??6(   69   ?? 52      $??Комментарий??6   ?? 53      -   5        	 ??Name$	 commentTextBox??53   ?    !  MaterialDesignOutlinedTextBox#???   6   
 ?? TextWrapping$

 Wrap=?6N    ?? AcceptsReturn$
 True??6b   ??6w   ?? *ClientService.Comment+6?   ?? 54      -   5        $
??0 20q?54      $??Записать??6#   66   ?? 55      -   5        $
??0 20q?55      $??
Назад??6#    ?? IsCancel$
 True??6C    ? Cursor$
 Hand??6S   5;      5=      5>      