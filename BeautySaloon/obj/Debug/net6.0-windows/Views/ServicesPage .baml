   M S B A M L   `   `   `  ????G  CBeautySaloon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BeautySaloon.ViewsBeautySaloon.Views  5      %    BeautySaloon.Views.ServicesPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:BeautySaloon.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          N?Name$  servicesPage??5       N? Title$ ServicesPage??5
       ? DataContext 5      ??  ?? Mode$ OneWay=? ?? RelativeSource ?? *Self+.??5      ]? .+?5   
   ?? $	??Top=?6   $??35(?6%   $
??Bold"?63   $??Услуги??6E   $??0 0 0 25q?6V   ?? 5   
    ?? Orientation$ 
Horizontal=?6      SecondaryHueMidBrush#???   5      $	??Top=?5      .+?5      ?? $??Поиск: ??6   $??18(?6&   $??Center=?64   ?? 5      -   5         ??Name$ searchTextBox??5   "   $	??200??6    ! MaterialDesignOutlinedTextBox#???  69   6q   ?? 5      $,??&Сортировать по цене: ??6   $??10 0 0 0q?64   $??Center=?5      ?? 5      -   5         ??Name$ sortingComboBox??5   \   $	??150??6    " MaterialDesignOutlinedComboBox#???  6#   ??5      ?? 5      .R?5      ?? ??6    ?? *Key+5      .@?5!      ?? $!??Не сортировать??6   ?? 5"      $#??По возрастранию??6   ?? 5#      $??По убыванию??6   5$      ?? 5%      $.??(Фильтрация по скидке: ??6   $??10 0 0 0q?65   $??Center=?5&      ?? 5'      -   5        $ filterComboBox??5'   ?   $	??150??6W   #???  6c   ??6   ?? *DiscountFilters+??5(      ?? 5)      .R?5*      ?? ??6    ?? *Key+5+      5-      ?? 5.      -   5        $??20 0 0 0q?5.       % !MaterialDesignOutlinedLightButton#???  6'   y?6~   ??  ?? ElementName$ servicesPage??	 ?? Path$	 IsAdmin?   BooleanToVisibilityConverter
 ?? 	Converter#
 [ .??5/      ?? $ 
Horizontal=?6   .+?50      '  !MaterialDesignThemes.Wpf.PackIcon  $??25??6.   $??25??6:      Kind$ DatabaseAdd=?6E   $	??5 0q?6X   ?? 51        MaterialDesignTextBlock#???  6    Добавить6\   52      53      54      ?? 55   
   $??Bottom=?6   #???   6,   .@?56      ?? Показано ?? 57      ?6   ?? *CurrentCount+ из ?? 6<   ?6@   ?? *
TotalCount+ записей58      59      ?? 5:   
   -   5         ??Name$ searchResultLabel??5:      $	??Top=?6+   $4??.Введите поисковый запрос??6@   ?? 5<   
   $??Disabled=?6`   ??6   ?? *
Services+??5=      ?? 5>      .R?5?      ? $	??800??6   ??6'   ?? *
Discount+  discountToColorConverter#
 [  ? ColumnDefinitions 5@      ?? 5A      $	??150 ?6/   ?? 5B      ?? 5C      $	??100 ?6/   .+?5E      ?? $	??150??6    $	??150??6,   $??UniformToFill=?69   ??6Q   ?? *MainImagePath+  imageConverter#
 [ ?? 5F      $??7q?6%   $??1??60   .+?5G      ?? $??22(?6(   $
??Wrap=?66   ?? 5H   "   $??SemiBold"?6&   ?6<   ?? *Title+?? 5I   "   ?? 5J   #   ?6'   ?? *Cost+ ?? StringFormat$ {0:0.00}?? ?? TextDecorations 6V   ?? *
Discount+  discountToStrokeConverter#
 [  ?? 5K   "    	 discountText#??? 	 6,   ??6U   ?? *CostWithDiscount+$ OneWay=?$ {0:0.00}?? рублей за ?? 5M   "   ?6&   ?? *DurationInMunites+$ OneWay=? минут?? 5N   ,   ?? 5O   "   $??14(?6,   #??? 	 6:   * скидка ?? 5Q   "   ?6&   ?? *
Discount+ 
 converterDiscount#
 [
  %5R   #   5S      ?? 5T      -   5        $??20q?5T   &   $??Записать??62   y?6E   ?? $ servicesPage??$	 IsAdmin?#
 [ 6?    ? 	Resources 5U       ?? 
TargetType ?? Triggers ?? Binding ?? Value ?? Property ?? Value??%?   &		       ?? 5V   "   " ??6(    5W   &   ?? 5X   *    66   ?? *
Discount+ 06S   .a?5Y   .   ??  ? y?$ 	Collapsed=?6K   5Z   +   5\   #   5]      5^      ?? 5_      $??2??6%   $??3q?65   $	??Top=?6A   y?6Y   ?? $ servicesPage??$	 IsAdmin?#
 [ .+?5`      ?? -   5        $??0 0 0 2q?5`   %     MaterialDesignFlatButton#???  66   .??5a   "     $
 Edit=?6:   5b      ?? 5c      -	   5        #???  5c   ;   .??5d   "     $ Remove=?6:   5e      5f      5g      5h      5j      5k      5l      