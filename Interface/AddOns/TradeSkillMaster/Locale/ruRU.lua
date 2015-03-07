-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster Locale - ruRU
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkill-Master/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster", "ruRU")
if not L then return end

L["Act on Scan Results"] = "Отчет о результатах сканирования" -- Needs review
L["A custom price of %s for %s evaluates to %s."] = "Цена %s для %s равнозначна  цене для %s."
L["Add >>>"] = "Добавить>>>"
L["Add Additional Operation"] = "Добавить Операцию"
L["Add Items to this Group"] = "Добавить вещи в эту группу" -- Needs review
L["Additional error suppressed"] = "Вывод дополнительных ошибок отключен"
L["Adjust Post Parameters"] = "Настройка установки параметров лотов" -- Needs review
L["Advanced Option Text"] = "Дополнительный текст опций" -- Needs review
L["Advanced topics..."] = "Дополнительные разделы..." -- Needs review
L["A group is a collection of items which will be treated in a similar way by TSM's modules."] = "Группа представляет собой совокупность предметов, которые будут обрабатываться модулями TSM одинаково."
L["All items with names containing the specified filter will be selected. This makes it easier to add/remove multiple items at a time."] = "Все предметы в именах которых содержится \"фильтр\" будут выбраны. Это удобно для добавления\\удаления большого количества сходных вещей."
L["Allows for testing of custom prices."] = "Позволяет тестировать пользовательские цены"
L["Allows you to build a queue of crafts that will produce a profitable, see what materials you need to obtain, and actually craft the items."] = "Позволяет выстраивать очередь крафта, которая является более прибыльным, видеть материалы, которые вам необходимы, и изготавливать "
L["Allows you to quickly and easily empty your mailbox as well as automatically send items to other characters with the single click of a button."] = "Позволяет быстро проверить почту и автоматически отправить предметы другим персонажам." -- Needs review
L["Allows you to use data from http://wowuction.com in other TSM modules and view its various price points in your item tooltips."] = "Позволяет использовать данные из http://wowuction.com в других модулях TSM и просматривать товары в различных ценовых вариациях в списке подсказки."
L["Along the bottom of the AH are various tabs. Click on the 'Auctioning' AH tab."] = "Внизу окна аукциона расположены разные вкладки. Нажмите на вкладку аукциона  'Auctioning'." -- Needs review
L["Along the bottom of the AH are various tabs. Click on the 'Shopping' AH tab."] = "Внизу окна аукциона расположены разные вкладки. Нажмите на вкладку аукциона  'Shopping'." -- Needs review
L["Along the top of the TSM_Crafting window, click on the 'Professions' button."] = "Вверху окна TSM_Crafting нажмите на вкладку аукциона  'Professions'." -- Needs review
L["Along the top of the TSM_Crafting window, click on the 'TSM Groups' button."] = "Вверху окна TSM_Crafting нажмите на вкладку аукциона  'TSM Groups'." -- Needs review
L["Along top of the window, on the left side, click on the 'Groups' icon to open up the TSM group settings."] = [=[Вверху окна, на левой стороне, нажмите иконку  'Группы' для открытия групповых настроек TSM.
]=] -- Needs review
L["Along top of the window, on the left side, click on the 'Module Operations / Options' icon to open up the TSM module settings."] = "Вверху окна, с левой стороны, нажмите на иконку 'Операции/Настройки модуля' для открытия настроек TSM модуля" -- Needs review
L["Along top of the window, on the right side, click on the 'Crafting' icon to open up the TSM_Crafting page."] = "Вверху окна, с правой стороны, нажите на иконку 'Crafting', для открытия TSM_Crafting" -- Needs review
L["Alt-Click to immediately buyout this auction."] = "Alt-Click для немедленного выкупа."
L["A maximum of 1 convert() function is allowed."] = "Максимум одна функция преобразования поддерживается."
L["A maximum of 1 gold amount is allowed."] = "Максимум 1 золотая допускается."
L["Any subgroups of this group will also be deleted, with all items being returned to the parent of this group or removed completely if this group has no parent."] = "Все подгруппы этой группы будут так же удалены, списки предметов перейдут в Родительские Группы, или удалятся если Родительских Групп нет"
L["Appearance Data"] = "Внешний вид Данных"
L["Application and Addon Developer:"] = "Приложения и аддоны Разработчика:"
L["Applied %s to %s."] = "Присоединить %s к %s."
L["Apply Operation to Group"] = "Присоединить Операцию к Группе"
L["Are you sure you want to delete the selected profile?"] = "Вы уверены что хотите удалить выбранный профиль?"
L["A simple, fixed gold amount."] = "Фиксированная сумма золота"
L["Assign this operation to the group you previously created by clicking on the 'Yes' button in the popup that's now being shown."] = "Привязать эту операцию к группе созданной ранее, нажав на кнопку 'Да'  во всплывающем окне." -- Needs review
L["A TSM_Auctioning operation will allow you to set rules for how auctionings are posted/canceled/reset on the auction house. To create one for this group, scroll down to the 'Auctioning' section, and click on the 'Create Auctioning Operation' button."] = "TSM_Auctioning operation позволит вам задать правила, по которым лоты аукциона устанавливаются/отменяются/переустанавливаются на аукционе. Для создания одной такой группы пролистните до 'Auctioning' секции, и нажмите на кнопку 'Create Auctioning Operation'." -- Needs review
L["A TSM_Crafting operation will allow you automatically queue profitable items from the group you just made. To create one for this group, scroll down to the 'Crafting' section, and click on the 'Create Crafting Operation' button."] = "Операция TSM_Crafting позволит Вам автоматически поместить в очередь полезные вещи из группы, уже созданной Вами. Для создания очереди для этой группы пролистните ниже до секции 'Crafting', и нажмите кнопку 'Create Crafting Operation'." -- Needs review
L["A TSM_Shopping operation will allow you to set a maximum price we want to pay for the items in the group you just made. To create one for this group, scroll down to the 'Shopping' section, and click on the 'Create Shopping Operation' button."] = "Операция TSM_Shopping позволит вам задать максимальную цену, которую мы хотели бы заплатить за вещи из группы, уже вами созданной. Для этого пролистните ниже до секции 'Shopping' и нажмите на кнопку 'Create Shopping Operation'." -- Needs review
L["At the top, switch to the 'Crafts' tab in order to view a list of crafts you can make."] = "В верхней части, перейти во вкладку 'Crafts', чтобы просмотреть список кравтов, которые вы можете сделать." -- Needs review
L["Auctionator - Auction Value"] = "Auctionator - рыночная стоимость"
L["Auction Buyout:"] = "Цена выкупа:"
L["Auction Buyout: %s"] = "Цена выкупа: %s"
L["Auctioneer - Appraiser"] = "Auctioneer - Appraiser"
L["Auctioneer - Market Value"] = "Auctioneer - рыночная стоимость"
L["Auctioneer - Minimum Buyout"] = "Auctioneer - минимальный выкуп"
L["Auction Frame Scale"] = "Масштаб окна аукциона"
L["Auction House Tab Settings"] = "Настройки окна аукциона"
L["Auction not found. Skipped."] = "Аукцион не найден. Пропустить."
L["Auctions"] = "Аукционы"
L["Author(s):"] = "Автор(ы):"
L["BankUI"] = "BankUI"
L["Below are various ways you can set the value of the current editbox. Any combination of these methods is also supported."] = "Ниже приведены различные варианты, Вы можете задать значение в окне редактирования. Любые комбинации также поддерживаются."
L["Below are your currently available price sources. The %skey|r is what you would type into a custom price box."] = "Ниже приведены доступные источники цены. Клавиша %s то что вы должны ввести в поле цены."
L["Below is a list of groups which this operation is currently applied to. Clicking on the 'Remove' button next to the group name will remove the operation from that group."] = "Ниже приведен список групп, к которым эта операция в настоящее время применяется. При нажатии на кнопку \"Удалить\" рядом с названием группы, вы удалите операцию для этой группы." -- Needs review
L["Below, set the custom price that will be evaluated for this custom price source."] = "Ниже установите свою цену которая будет рассчитываться для этого источника цен." -- Needs review
L["Border Thickness (Requires Reload)"] = "Толщина рамки (требуется перезагрузка)"
L["Buy from Vendor"] = "Купить у НПС"
L["Buy items from the AH"] = "Купить предмет на аукционе" -- Needs review
L["Buy materials for my TSM_Crafting queue"] = "Купить материалы для очереди TSM_Crafting" -- Needs review
L["Canceling Auction: %d/%d"] = "Отменить аукцион: %d/%d"
L["Cancelled - Bags and bank are full"] = "Отмена - Сумки и банк заполнены"
L["Cancelled - Bags and guildbank are full"] = "Отмена - Сумки и банк гильдии заполнены"
L["Cancelled - Bags are full"] = "Отмена - Сумки заполнены"
L["Cancelled - Bank is full"] = "Отмена - Банк полон"
L["Cancelled - Guildbank is full"] = "Отмена - Банк гильдии полон"
L["Cancelled - You must be at a bank or guildbank"] = "Отмена - Вы должны находится около банка или банка гильдии."
L["Cannot delete currently active profile!"] = "Невозможно удалить использующийся профиль"
L["Category Text 2 (Requires Reload)"] = "Текст категории 2 (требуется перезагрузка)"
L["Category Text (Requires Reload)"] = "Текст Категории (требуется перезагрузка)"
-- L["|cffffff00DO NOT report this as an error to the developers.|r If you require assistance with this, make a post on the TSM forums instead."] = ""
L[ [=[|cffffff00Important Note:|r You do not currently have any modules installed / enabled for TradeSkillMaster! |cff77ccffYou must download modules for TradeSkillMaster to have some useful functionality!|r

Please visit http://www.curse.com/addons/wow/tradeskill-master and check the project description for links to download modules.]=] ] = [=[|cffffff00Important Внимание:|r У Вас нет установленных/включенных модулей TSM! |cff77ccff Вы должны скачать/включить их, для возможности использовать весь функционал TSM.r

Посетите http://www.curse.com/addons/wow/tradeskill-master для более подробной информации]=]
L["Changes how many rows are shown in the auction results tables."] = "Изменить количество строк, отображаемых в результатах таблицы."
L["Changes the size of the auction frame. The size of the detached TSM auction frame will always be the same as the main auction frame."] = "Изменяет размер окна аукциона. Размер открепленного окна аукциона TSM всегда будет таким же, как и окно основного аукциона."
L["Character Name on Other Account"] = "Имя персонажа с другого аккаунта"
L["Chat Tab"] = "Чат вкладка" -- Needs review
L["Check out our completely free, desktop application which has tons of features including deal notification emails, automatic updating of AuctionDB and WoWuction prices, automatic TSM setting backup, and more! You can find this app by going to %s."] = "Check out our completely free, desktop application which has tons of features including deal notification emails, automatic updating of AuctionDB and WoWuction prices, automatic TSM setting backup, and more! You can find this app by going to %s."
L["Check this box to override this group's operation(s) for this module."] = "Выберите чтобы заменить Операции Групп(ы) в этом модуле"
L["Clear"] = "Очистить"
L["Clear Selection"] = "Очистить выбранное"
L["Click on the Auctioning Tab"] = "Перейдите во вкладку Аукцион" -- Needs review
L["Click on the Crafting Icon"] = "Нажмите на иконку Crafting" -- Needs review
L["Click on the Groups Icon"] = "Нажмите на иконку Группы" -- Needs review
L["Click on the Module Operations / Options Icon"] = "Нажмите на иконку Операции/Настройка модуля" -- Needs review
L["Click on the Shopping Tab"] = "Нажмите на вкладку Shopping" -- Needs review
L["Click on the 'Show Queue' button at the top of the TSM_Crafting window to show the queue if it's not already visible."] = "Нажмите на кнопку \"Показать очереди\" вверху окна TSM_Crafting чтобы посмотреть очередь, если она не отображается." -- Needs review
L["Click on the 'Start Sniper' button in the sidebar window."] = "Нажмите на кнопку 'Запуск Снайпера' в окне боковой панели." -- Needs review
L["Click on the 'Start Vendor Search' button in the sidebar window."] = "Нажмите на кнопку 'Перепродажа вендору' в окне боковой панели." -- Needs review
L["Click the button below to open the export frame for this group."] = "Нажмите чтобы открыть окно экспорта для этой группы."
L["Click this button to completely remove this operation from the specified group."] = "Нажмите эту кнопку, чтобы удалить эту операцию для указанной группы." -- Needs review
L["Click this button to configure the currently selected operation."] = "Нажмите чтобы настроить выбранную Операцию"
L["Click this button to create a new operation for this module."] = "Нажмите чтобы создать новую Операцию для этого модуля"
L["Click this button to show a frame for easily exporting the list of items which are in this group."] = "Click this button to show a frame for easily exporting the list of items which are in this group."
L["Co-Founder:"] = "Соусредитель:"
L["Coins:"] = "Монеты:"
L["Color Group Names by Depth"] = "Цвет Названия Группы by Depth" -- Needs review
L["Content - Backdrop"] = "Контент - Фон"
L["Content - Border"] = "Контент - рамка"
L["Content Text - Disabled"] = "Текст контента - Отключен"
L["Content Text - Enabled"] = "Текст контента - Включен"
L["Copy From"] = "Копировать из"
L["Copy the settings from one existing profile into the currently active profile."] = "Скопировать настройки профайла в активный профиль."
L["Craft Items from Queue"] = "Создать предмет из очереди" -- Needs review
L["Craft items with my professions"] = "Создавать предметы моих профессий" -- Needs review
-- L["Craft specific one-off items without making a queue"] = ""
L["Create a new empty profile."] = "Создать пустой профиль"
L["Create a New Group"] = "Создать Новую Группу" -- Needs review
L["Create a new group by typing a name for the group into the 'Group Name' box and pressing the <Enter> key."] = "Для создания новой группы необходимо указать ее имя в поле 'Имя Группы' и нажать <Enter>." -- Needs review
L["Create a new %s operation by typing a name for the operation into the 'Operation Name' box and pressing the <Enter> key."] = "Для создания новой %s операции необходимо указать ее имя в поле 'Имя Операции' и нажать <Enter>." -- Needs review
L["Create a %s Operation %d/5"] = "Создать %s Operation %d/5" -- Needs review
L["Create New Subgroup"] = "Создать новую Подгруппу"
L["Create %s Operation"] = "Создать %s Операцию"
L["Create the Craft"] = "Создать Крафт" -- Needs review
L["Creating a relationship for this setting will cause the setting for this operation to be equal to the equivalent setting of another operation."] = "Создание Связи настроек Операции. При изменении настроек, вызовет изменение настроек связанной Операции"
L["Crystals"] = "Кристаллы"
L["Current Profile:"] = "Текущий профиль:"
L["Custom Price for this Source"] = "Пользовательская Цена для этого Источника" -- Needs review
L["Custom Price Source"] = "Пользовательский Источник Цен" -- Needs review
L["Custom Price Source Name"] = "Название Пользовательского Источника Цен" -- Needs review
L["Custom Price Sources"] = "Пользовательские Источники Цен" -- Needs review
L["Custom price sources allow you to create more advanced custom prices throughout all of the TSM modules. Just as you can use the built-in price sources such as 'vendorsell' and 'vendorbuy' in your custom prices, you can use ones you make here (which themselves are custom prices)."] = "Свои источники цен позволяют создать продвинутые пользовательские цены во всех модулях TSM. Вы можете использовать как встроенные источники цен вроде \"vendorsell\" и \"vendorbuy\" в своих цена, так и те которые сделаете здесь." -- Needs review
-- L["Custom price sources to display in item tooltips:"] = ""
L["Default"] = "По умолчанию"
L["Default BankUI Tab"] = "Вкладка по умолчанию для BankUI"
L["Default Group Tab"] = "Вкладка Группы по умолчанию"
L["Default Tab"] = "Вкладка по умолчанию"
L["Default Tab (Open Auction House to Enable)"] = "Панель по умолчанию (Панель при открытии аукциона)"
L["Delete a Profile"] = "Удалить Профиль"
L["Delete Custom Price Source"] = "Удалить Пользовательский Источник Цен" -- Needs review
L["Delete existing and unused profiles from the database to save space, and cleanup the SavedVariables file."] = "Удалить существующие и неиспользующиеся профили из базы, для экономии места, и очистить файл SavedVariables."
L["Delete Group"] = "Удалить Группу"
L["Delete Operation"] = "Удалить Операцию"
L["Description:"] = "Описание:"
L["Deselect All Groups"] = "Отменить выбор"
L["Deselects all items in both columns."] = "Отменить выбор всех предметов в обоих колонках."
L["Disenchant source:"] = "Источник распыления:"
L["Disenchant Value"] = "Цена распыления"
L["Disenchant Value:"] = "Цена распыления:"
L["Disenchant Value x%s:"] = "Цена распыления x%s:"
L["Display disenchant value in tooltip."] = "Отображать цену распыления в подсказке"
L["Display Group / Operation Info in Tooltips"] = "Отобразить Группу/Операцию в подсказке"
L["Display prices in tooltips as:"] = "Отображать цены в посказке как:"
L["Display vendor buy price in tooltip."] = "Отображать цену покупки у НПС в подсказке"
L["Display vendor sell price in tooltip."] = "Отображать цену продажи НПС в подсказке"
L["Done"] = "Готово"
L["Done!"] = "Готово!" -- Needs review
-- L["Double-click to collapse this item and show only the cheapest auction."] = ""
-- L["Double-click to expand this item and show all the auctions."] = ""
L["Duplicate Operation"] = "Дублировать Операцию"
L["Duration:"] = "Duration:"
L["Dust"] = "Пыль"
L["Embed TSM Tooltips"] = "Включение подсказок TSM" -- Needs review
L["Empty price string."] = "Пустая строка цены."
-- L["Enter Filters and Start Scan"] = ""
-- L["Enter Import String"] = ""
-- L["Error creating custom price source. Custom price source with name '%s' already exists."] = ""
L["Error creating group. Group with name '%s' already exists."] = "Ошибка создания Группы. Такая Группа '%s' уже существует."
L["Error creating subgroup. Subgroup with name '%s' already exists."] = "Ошибка создания Подруппы. Такая Подруппа '%s' уже существует."
L["Error duplicating operation. Operation with name '%s' already exists."] = "Ошибка создания Операции. Такая Операция '%s' уже существует."
L["Error Info:"] = "Инфо об ошибке:"
L["Error moving group. Group '%s' already exists."] = "Ошибка перемещения Группы. Такая Группа '%s' уже существует."
L["Error moving group. You cannot move this group to one of its subgroups."] = "Ошибка перемещения группы. Вы не можете переместить эту группу в одной из ее подгрупп." -- Needs review
-- L["Error renaming custom price source. Custom price source with name '%s' already exists."] = ""
L["Error renaming group. Group with name '%s' already exists."] = "Ошибка переименования Группы. Такая Группа '%s' уже существует."
L["Error renaming operation. Operation with name '%s' already exists."] = "Ошибка переименования Операции. Такая Операция '%s' уже существует."
L["Essences"] = "Сущности"
L["Examples"] = "Примеры"
L["Existing Profiles"] = "Существующие профили"
L["Export Appearance Settings"] = "Экспорт настроек внешнего вида"
L["Export Group Items"] = "Экспортировать предметы Группы"
L["Export Items in Group"] = "Экспортировать предметы в Группу"
L["Export Operation"] = "Операции Экспорта" -- Needs review
L["Failed to parse gold amount."] = "Невозможно выполнить анализ количества золота"
-- L["First, ensure your new group is selected in the group-tree and then click on the 'Restock Selected Groups' button at the bottom."] = ""
-- L["First, ensure your new group is selected in the group-tree and then click on the 'Start Cancel Scan' button at the bottom of the tab."] = ""
-- L["First, ensure your new group is selected in the group-tree and then click on the 'Start Post Scan' button at the bottom of the tab."] = ""
-- L["First, ensure your new group is selected in the group-tree and then click on the 'Start Search' button at the bottom of the sidebar window."] = ""
L["First, log into a character on the same realm (and faction) on both accounts. Type the name of the OTHER character you are logged into in the box below. Once you have done this on both accounts, TSM will do the rest automatically. Once setup, syncing will automatically happen between the two accounts while on any character on the account (not only the one you entered during this setup)."] = "Во-первых, необходимо зайти на персонажа в пределах одного игрового мира (и фракции) на обоих аккаунтах. Введите имя ДРУГОГО персонажа на которого вы вошли в поле ниже. После того как вы сделали это на обоих аккаунтах, TSM сделает все остальное автоматически. После установки, синхронизация будет автоматически происходить между двумя аккаунтами."
L["Fixed Gold Value"] = "Фиксированное значение золота"
L["Forget Characters:"] = "Удалить персонажа:"
L["Frame Background - Backdrop"] = "Фон задника"
L["Frame Background - Border"] = "Граница рамки"
L["General Options"] = "Основные настройки"
L["General Settings"] = "Основные настройки"
L["Give the group a new name. A descriptive name will help you find this group later."] = "Дайте Группе новое имя. Более информативное название даст вам возможность легче ориентироваться в дальнейшем."
L["Give the new group a name. A descriptive name will help you find this group later."] = "Дайте новой Группе имя. Более информативное название даст вам возможность легче ориентироваться в дальнейшем."
L["Give this operation a new name. A descriptive name will help you find this operation later."] = "Дайте Операции новое имя. Более информативное название даст вам возможность легче ориентироваться в дальнейшем."
-- L["Give your new custom price source a name. This is what you will type in to custom prices and is case insensitive (everything will be saved as lower case)."] = ""
L["Goblineer (by Sterling - The Consortium)"] = "Goblineer (by Sterling - The Consortium)"
-- L["Go to the Auction House and open it."] = ""
L["Go to the 'Groups' Page"] = "Перейдите на вкладку \"Группы\"" -- Needs review
L["Go to the 'Import/Export' Tab"] = "Перейдите на вкладку \"Импорт/Экспорт\"" -- Needs review
L["Go to the 'Items' Tab"] = "Перейдите на вкладку \"Предметы\"" -- Needs review
-- L["Go to the 'Operations' Tab"] = ""
L["Group:"] = "Группа:"
L["Group(Base Item):"] = "Группа(Основные предметы):"
L["Group Item Data"] = "Данные предметов Группы"
L["Group Items:"] = "Предметы Группы:"
L["Group Name"] = "Имя Группы"
L["Group names cannot contain %s characters."] = "Имя Группы не может содержать символы: %s"
L["Groups"] = "Группы"
L["Help"] = "Помощь"
L["Help / Options"] = "Помощь / Настройки" -- Needs review
L["Here you can setup relationships between the settings of this operation and other operations for this module. For example, if you have a relationship set to OperationA for the stack size setting below, this operation's stack size setting will always be equal to OperationA's stack size setting."] = "Здесь вы можете настроить Связи между настройками Операций в этом модуле. Например: в Операциии А настроен размер стаков, значит эта настройка будет применена для всех операций связанных с А."
L["Hide Minimap Icon"] = "Скрыть иконку на миникарте"
-- L["How would you like to craft?"] = ""
-- L["How would you like to create the group?"] = ""
-- L["How would you like to post?"] = ""
-- L["How would you like to shop?"] = ""
L["Icon Region"] = "Иконка региона"
L["If checked, all tables listing auctions will display the bid as well as the buyout of the auctions. This will not take effect immediately and may require a reload."] = "Если опция включена, во всех списках лотов появится Предложение, а также цена выкупа лота. Для вступления изменений в силу, необходима перезагрузка."
L["If checked, any items you import that are already in a group will be moved out of their current group and into this group. Otherwise, they will simply be ignored."] = "Если выбрано то при импорте, любой предмет уже состоящий в Группе, будет премещен в эту Группу. Если не выбрано, при импорте предмет не будет импортирован, если он уже сосотоит в Группе"
-- L["If checked, group names will be colored based on their subgroup depth in group trees."] = ""
L["If checked, only items which are in the parent group of this group will be imported."] = "Если выбрано,будут импортированы только предметы из Родительской Группы для этой Группы."
L["If checked, operations will be stored globally rather than by profile. TSM groups are always stored by profile. Note that if you have multiple profiles setup already with separate operation information, changing this will cause all but the current profile's operations to be lost."] = "Если выбрано, Операции будет сохранена Глобально, а не в Профиль. Группы TSM всегда сохраняются в Профиль. Обратите внимание, что если у вас несколько Профилей с разными настройками Операций, выбор этой опции вызовет потерю настроек таких Оперций из другийх Профилей."
L["If checked, the disenchant value of the item will be shown. This value is calculated using the average market value of materials the item will disenchant into."] = "Если выбрано, цена распыление предмета будет показана. Это значение будет рассчитана из цены на аукционе материалов, которые можно получить из данного предмета при распылении."
L["If checked, the price of buying the item from a vendor is displayed."] = "Если выбрано, будет отображаться цена покупки предмета у НПС."
L["If checked, the price of selling the item to a vendor displayed."] = "Если выбрано, будет отображаться цена продажи предмета НПС."
-- L["If checked, the structure of the subgroups will be included in the export. Otherwise, the items in this group (and all subgroups) will be exported as a flat list."] = ""
-- L["If checked, this custom price will be displayed in item tooltips."] = ""
-- L["If checked, TSM's tooltip lines will be embedded in the item tooltip. Otherwise, it will show as a separate box below the item's tooltip."] = ""
L["If checked, ungrouped items will be displayed in the left list of selection lists used to add items to subgroups. This allows you to add an ungrouped item directly to a subgroup rather than having to add to the parent group(s) first."] = "Если выбрано, Негруппированные предметы будут отображаться в левой колонке, при выборе предметов для Подгруппы. Это позволяет добовлять предметы непосредственно в Подгруппу, без предварительного добавления предмета в Родительскую Группу."
L["If checked, your bags will be automatically opened when you open the auction house."] = "если выбрано, ваши сумки будут открываться автоматически, когда Вы откроете аукцион."
-- L["If there are no auctions currently posted for this item, simmply click the 'Post' button at the bottom of the AH window. Otherwise, select the auction you'd like to undercut first."] = ""
L["If you delete, rename, or transfer a character off the current faction/realm, you should remove it from TSM's list of characters using this dropdown."] = "Если Вы удалите, переименуете или перенесете персонажа на другой сервер, необходимо удалить его Имя из этого списка"
--[==[ L[ [=[If you'd like, you can adjust the value in the 'Minimum Profit' box in order to specify the minimum profit before Crafting will queue these items.

Once you're done adjusting this setting, click the button below.]=] ] = "" ]==]
L["If you have multiple profile set up with operations, enabling this will cause all but the current profile's operations to be irreversibly lost. Are you sure you want to continue?"] = "Если вы имеете несколько Профилей с настроенными операциями, включение этой функции приведет к потере Всех Операций кроме Операций текущего Профиля. ВЫ уверены что хотите продолжить?"
-- L["If you open your bags and shift-click the item in your bags, it will be placed in Shopping's search bar. You may need to put your cursor in the search bar first. Alternatively, you can type the name of the item manually in the search bar and then hit enter or click the 'Search' button."] = ""
L["Ignore Operation on Characters:"] = "Не использовать Операцию на Персонаже:"
L["Ignore Operation on Faction-Realms:"] = "Не использовать Операцию на Сервере/Фракции"
L["Ignore Random Enchants on Ungrouped Items"] = "Игнорировать рандомные предметы."
L["I'll Go There Now!"] = "Сейчас скачаю! "
-- L["I'm done."] = ""
L["Import Appearance Settings"] = "Импорт настроек внешнего вида"
L["Import/Export"] = "Импорт/Экспорт"
L["Import Items"] = "Импортировать предметы"
-- L["Import Operation Settings"] = ""
L["Import Preset TSM Theme"] = "Импорт шаблонов TSM тем"
L["Import String"] = "Строка импорта"
-- L["Include Subgroup Structure in Export"] = ""
L["Installed Modules"] = "Установленные модули"
-- L["In the confirmation window, you can adjust the buyout price, stack sizes, and auction duration. Once you're done, click the 'Post' button to post your items to the AH."] = ""
-- L["In the list on the left, select the top-level 'Groups' page."] = ""
L["Invalid appearance data."] = "Неверные внешние данные "
L["Invalid custom price."] = "недопустимая цена."
L["Invalid custom price for undercut amount. Using 1c instead."] = "Недопустимое значение для понижения цены. Используется 1с."
L["Invalid filter."] = "Недопустимый фильтр."
L["Invalid function."] = "Недопустимая функция."
L["Invalid import string."] = "Недопустимое значение в строке импорта."
L["Invalid item link."] = "Недопустимая ссылка на предмет."
-- L["Invalid operator at end of custom price."] = ""
-- L["Invalid parameter to price source."] = ""
L["Invalid parent argument type. Expected table, got %s."] = "Недопустимый родительский тип аргумента. Ожидаемая таблица, %s."
L["Invalid price source in convert."] = "Недопустимая цена источника при преобразовании."
L["Invalid word: '%s'"] = "Недопустимое слово: '%s'"
L["Item"] = "Предмет"
L["Item Buyout: %s"] = "Выкуп предмета: %s"
L["Item Level"] = "Уровень предмета"
L["Item links may only be used as parameters to price sources."] = "Ссылка на предмет, может быть использована только как параметр для цены источника."
L["Item not found in bags. Skipping"] = "Предмет не найден в сумках. Пропущено."
L["Items"] = "Предметы"
L["Item Tooltip Text"] = "Текст подсказки"
L["Jaded (by Ravanys - The Consortium)"] = "Jaded (by Ravanys - The Consortium)"
L["Just incase you didn't read this the first time:"] = "На случай если вы не прочли в первый раз:"
--[==[ L[ [=[Just like the default profession UI, you can select what you want to craft from the list of crafts for this profession. Click on the one you want to craft.

Once you're done, click the button below.]=] ] = "" ]==]
L["Keep Items in Parent Group"] = "Сохранить вещи в Родительской Группе"
L["Keeps track of all your sales and purchases from the auction house allowing you to easily track your income and expenditures and make sure you're turning a profit."] = "Отслеживает все ваши продажи и покупки на аукционе, что позволяет легко отслеживать ваши доходы и расходы и быть увереным, что вы получаете прибыль!"
L["Label Text - Disabled"] = "Label Text - Отключен"
L["Label Text - Enabled"] = "Label Text - Разрешен"
L["Lead Developer and Co-Founder:"] = "Ведущий разработчик и сооснователь:"
L["Light (by Ravanys - The Consortium)"] = "Light (by Ravanys - The Consortium)"
L["Link Text 2 (Requires Reload)"] = "Текст ссылки 2"
L["Link Text (Requires Reload)"] = "Текст ссылки (требуется перезагрузка)"
L["Load Saved Theme"] = "Загрузить сохраненную Тему"
-- L["Look at what's profitable to craft and manually add things to a queue"] = ""
-- L["Look for items which can be destroyed to get raw mats"] = ""
-- L["Look for items which can be vendored for a profit"] = ""
-- L["Looks like no items were added to the queue. This may be because you are already at or above your restock levels, or there is nothing profitable to queue."] = ""
-- L["Looks like no items were found. You can either try searching for something else, or simply close the Assistant window if you're done."] = ""
-- L["Looks like no items were imported. This might be because they are already in another group in which case you might consider checking the 'Move Already Grouped Items' box to force them to move to this group."] = ""
-- L["Looks like TradeSkillMaster has detected an error with your configuration. Please address this in order to ensure TSM remains functional."] = ""
L["Looks like TradeSkillMaster has encountered an error. Please help the author fix this error by copying the entire error below and following the instructions for reporting bugs listed here (unless told elsewhere by the author):"] = "Похоже в TSM произошла ошибка. Пожалуйста, помогите автору проекта исправить эту ошибку, скопируйте текст ниже и следуйте инструкции \"Сообщений об ошибках\", который приведен здесь  (если не указано в другом месте)"
L["Looks like TradeSkillMaster has encountered an error. Please help the author fix this error by following the instructions shown."] = "Похоже в TSM произошла ошибка. Пожалуйста, помогите автору проекта исправить эту ошибку, следуя приведенным инструкциям."
-- L["Loop detected in the following custom price:"] = ""
-- L["Make a new group from an import list I have"] = ""
L["Make a new group from items in my bags"] = "Создать новую группу из предметов в моих сумках" -- Needs review
L["Make Auction Frame Movable"] = "Сделать окно аукциона перемещаемым"
L["Management"] = "Управление"
L["Manages your inventory by allowing you to easily move stuff between your bags, bank, and guild bank."] = "Управляет вашим инвентарем, позволяя легко перемещать товары между сумками, банком и гильдбанком"
L["% Market Value"] = "% Цена на аукционе"
L["max %d"] = "Макс %d"
L["Medium Text Size (Requires Reload)"] = "Средний размер текста (необходима перезагрука интерфейса)"
L["Mills, prospects, and disenchants items at super speed!"] = "Измельчает, просеивает и распыляет товары на супер скорости!"
L["Misplaced comma"] = "Запятая в другом месте"
L["Module:"] = "Модуль:"
L["Module Information:"] = "Информация о модуле:"
L["Module Operations / Options"] = "Операции/Настройки модуля"
L["Modules"] = "Модули" -- Needs review
L["More Advanced Methods"] = "Более совершенных методов"
-- L["More advanced options are now designated by %sred text|r. Beginners are encourages to come back to these once they have a solid understanding of the basics."] = ""
L["Move Already Grouped Items"] = "Перемещать уже Группированные предметы"
L["Moved %s to %s."] = "Переместить %s к %s."
L["Move Group"] = "Переместить Группу"
L["Move to Top Level"] = "Переместить выше"
L["Multi-Account Settings"] = "Настройки для нескольких аккаунтов"
-- L["My group is selected."] = ""
-- L["My new operation is selected."] = ""
L["New"] = "Новый"
L["New Custom Price Source"] = "Новый источник цен" -- Needs review
L["New Group"] = "Новая Группа"
L["New Group Name"] = "Новое имя Группы"
L["New Parent Group"] = "Новая Исходная Группа"
L["New Subgroup Name"] = "Новое имя Подгруппы"
L["No Assistant guides available for the modules which you have installed."] = "Нет руководств, доступных для модулей, которые вы установили." -- Needs review
L["<No Group Selected>"] = "<Не выбрана группа>" -- Needs review
L["No modules are currently loaded.  Enable or download some for full functionality!"] = "Не загружено ни одного модуля. Включите их или скачайте для полной функциональности!"
L["None of your groups have %s operations assigned. Type '/tsm' and click on the 'TradeSkillMaster Groups' button to assign operations to your TSM groups."] = "Ни одна из групп не имеет назначенных операций %s. Набериет  '/tsm' и щелкните  кнопку 'TSM Группы' для назначения Операций Группам."
L["<No Operation>"] = "<Нет Операции>"
L["<No Operation Selected>"] = [=[<Не выбрана операция>
]=] -- Needs review
L["<No Relationship>"] = "Нет Связи"
L["Normal Text Size (Requires Reload)"] = "Нормальный размер текста"
--[==[ L[ [=[Now that the scan is finished, you can look through the results shown in the log, and for each item, decide what action you want to take.

Once you're done, click on the button below.]=] ] = "" ]==]
L["Number of Auction Result Rows (Requires Reload)"] = "Количество строк результатов аукциона (необходима перезагрузка)"
L["Only Import Items from Parent Group"] = "Импорт предметов только из Исходной Группы"
L["Open All Bags with Auction House"] = "Открывать все сумки при посещении Аукциона"
-- L["Open one of the professions which you would like to use to craft items."] = ""
-- L["Open the Auction House"] = ""
-- L["Open the TSM Window"] = ""
-- L["Open up Your Profession"] = ""
L["Operation #%d"] = "Операция #%d"
L["Operation Management"] = "Управление Операциями"
L["Operations"] = "Операции"
L["Operations: %s"] = "Операции: %s"
L["Options"] = "Настройки"
L["Override Module Operations"] = "Перенастроить Операции  модуля"
L["Parent Group Items:"] = "Предметы Родительской Группы:"
L["Parent/Ungrouped Items:"] = "Предметы Родительской Группы/Без Группы:"
L["Past Contributors:"] = "Бывшие участники:"
L["Paste the exported items into this box and hit enter or press the 'Okay' button. The recommended format for the list of items is a comma separated list of itemIDs for general items. For battle pets, the entire battlepet string should be used. For randomly enchanted items, the format is <itemID>:<randomEnchant> (ex: 38472:-29)."] = "Paste the exported items into this box and hit enter or press the 'Okay' button. The recommended format for the list of items is a comma separated list of itemIDs for general items. For battle pets, the entire battlepet string should be used. For randomly enchanted items, the format is <itemID>:<randomEnchant> (ex: 38472:-29)."
-- L["Paste the exported operation settings into this box and hit enter or press the 'Okay' button. Imported settings will irreversibly replace existing settings for this operation."] = ""
L[ [=[Paste the list of items into the box below and hit enter or click on the 'Okay' button.

You can also paste an itemLink into the box below to add a specific item to this group.]=] ] = [=[Вставить список Предметов в поле ввода ниже и нажмите ввод или нажмите на 'OK'.

Вы также можете вставить ссылку Предмета, чтобы добавить его к этой Группе.]=]
-- L["Paste your import string into the 'Import String' box and hit the <Enter> key to import the list of items."] = ""
L["Percent of Price Source"] = "Процент от цены источника"
L["Performs scans of the auction house and calculates the market value of items as well as the minimum buyout. This information can be shown in items' tooltips as well as used by other modules."] = "Сканирует аукцион и вычисляет рыночную стоимость лотов а также запоминает минимальный выкуп. Эта информация может использоваться другими модулями, а также отображаться в подсказках к лотам."
L["Per Item:"] = "За штуку:"
-- L["Please select the group you'd like to use."] = ""
-- L["Please select the new operation you've created."] = ""
-- L["Please wait..."] = ""
L["Post"] = "Выставить"
-- L["Post an Item"] = ""
-- L["Post items manually from my bags"] = ""
L["Posts and cancels your auctions to / from the auction house according to pre-set rules. Also, this module can show you markets which are ripe for being reset for a profit."] = "Выставить и отменить выша аукционы в соответсвии с заранее заданными правилами. Кроме того, этот модуль может показать вам, аукционы, которые можно отменить для получения прибыли."
-- L["Post Your Items"] = ""
L["Price Per Item"] = "Цена за штуку"
L["Price Per Stack"] = "Цена за стак"
L["Price Per Target Item"] = "Цена за выделенный предмет"
L["Prints out the available price sources for use in custom price boxes."] = "Вывести все доступные цены для использования в пользовательских ценах."
L["Prints out the version numbers of all installed modules"] = "Вывести версии всех установленных модулей TSM"
L["Profiles"] = "Профили"
L["Provides extra functionality that doesn't fit well in other modules."] = "Обеспечивает дополнительнsq функционал, который плохо вписывался в другие модули."
L["Provides interfaces for efficiently searching for items on the auction house. When an item is found, it can easily be bought, canceled (if it's yours), or even posted from your bags."] = "Предоставляет интерфейс для эффективного поиска лота на аукционе. Когда лот найден, его можно с легкостью купить, отменить (если он ваш) и даже выставить его, если он есть в сумках."
L["Purchasing Auction: %d/%d"] = "Покупка аукциона: %d/%d"
-- L["Queue Profitable Crafts"] = ""
-- L["Quickly post my items at some pre-determined price"] = ""
L["Region - Backdrop"] = "Область - фон"
L["Region - Border"] = "Область - рамка"
L["Remove"] = "Удалить" -- Needs review
L["<<< Remove"] = "<<< Удалить"
-- L["Removed '%s' as a custom price source. Be sure to update any custom prices that were using this source."] = ""
L["<Remove Operation>"] = "<Удалить Операцию>"
L["Rename Custom Price Source"] = "Переименовать источник цен" -- Needs review
L["Rename Group"] = "Переименовать Группу"
L["Rename Operation"] = "Переименовать Операцию"
L["Replace"] = "Заменить"
L["Reset Profile"] = "Сбросить профиль"
L["Resets the position, scale, and size of all applicable TSM and module frames."] = "Сброс положения, масштаба и размеров TSM и его модулей." -- Needs review
L["Reset the current profile back to its default values, in case your configuration is broken, or you simply want to start over."] = "Сбросить текущий профиль, к настройкам по умолчанию"
L["Resources:"] = "Ресурсы:"
L["Restart Assistant"] = "Перезапуск помощьника" -- Needs review
L["Restore Default Colors"] = "Цвета по умолчанию"
L["Restores all the color settings below to their default values."] = "Сбрасывает на изначальные цветовые настройки."
L["Saved theme: %s."] = "Сохоранить Тему : %s."
L["Save Theme"] = "Сохранить Тему"
L["%sDrag%s to move this button"] = "%s Зажмите и держите %s чтобы переместить эту кнопку"
L["Searching for item..."] = "Поиск предмета...."
-- L["Search the AH for items to buy"] = ""
L["See instructions above this editbox."] = "Смотрите инструкции над полем ввода."
L["Select a group from the list below and click 'OK' at the bottom."] = "Выберите группу из низлежащего списка и нажмите  'OK'."
L["Select All Groups"] = "Выбрать все"
L["Select an operation to apply to this group."] = "Выберите Оперцию для этой Группы"
L["Select a %s operation using the dropdown above."] = "Выберите %s Операцию из вышестоящего выпадающего меню."
L["Select a theme from this dropdown to import one of the preset TSM themes."] = "Выберите тему из выпадающего списка для импорта одной из предустановленных тем TSM."
L["Select a theme from this dropdown to import one of your saved TSM themes."] = "Выберите тему из выпадающего меню для импорта."
-- L["Select Existing Group"] = ""
-- L["Select Group and Click Restock Button"] = ""
-- L["Select Group and Start Scan"] = ""
-- L["Select the Cancel Tab"] = ""
-- L["Select the 'Cancel' tab within the operation to set the canceling options for the TSM_Auctioning operation."] = ""
-- L["Select the Craft"] = ""
-- L["Select the 'Crafts' Tab"] = ""
-- L["Select the 'General' Tab"] = ""
-- L["Select the 'General' tab within the operation to set the general options for the TSM_Shopping operation."] = ""
--[==[ L[ [=[Select the group you'd like to use. Once you have done this, click on the button below.

Currently Selected Group: %s]=] ] = "" ]==]
-- L["Select the items you want to add in the left column and then click on the 'Add >>>' button at the top to add them to this group."] = ""
-- L["Select the 'Operations' page from the list on the left of the TSM window."] = ""
-- L["Select the Options Page"] = ""
-- L["Select the 'Options' page to change general settings for TSM_Shopping"] = ""
-- L["Select the Post Tab"] = ""
-- L["Select the 'Post' tab within the operation to set the posting options for the TSM_Auctioning operation."] = ""
L["Select the price source for calculating disenchant value."] = "Выберите источник для расчета цены распыления."
-- L["Select the 'Shopping' tab to open up the settings for TSM_Shopping."] = ""
--[==[ L[ [=[Select your new operation in the list of operation along the left of the TSM window (if it's not selected automatically) and click on the button below.

Currently Selected Operation: %s]=] ] = "" ]==]
L["Seller"] = "Продавец"
-- L["Sell items on the AH and manage my auctions"] = ""
L["Sell to Vendor"] = "Продать НПС"
L["Set All Relationships to Target"] = "Установить все Связи на цель"
-- L["Set a Maximum Price"] = ""
-- L["Set Auction Price Settings"] = ""
-- L["Set Auction Settings"] = ""
-- L["Set Cancel Settings"] = ""
-- L["Set Max Restock Quantity"] = ""
-- L["Set Minimum Profit"] = ""
-- L["Set Other Options"] = ""
-- L["Set Posting Price Settings"] = ""
-- L["Set Quick Posting Duration"] = ""
-- L["Set Quick Posting Price"] = ""
L["Sets all relationship dropdowns below to the operation selected."] = "Выберите Связи из выпадающего ниже меню, чтобы установить их для выбранной Операции"
L["Settings"] = "Настройки"
L["Setup account sync'ing with the account which '%s' is on."] = "Настройки синхронизации с Аккаунтом '%s'  включены."
-- L["Set up TSM to automatically cancel undercut auctions"] = ""
-- L["Set up TSM to automatically post auctions"] = ""
-- L["Set up TSM to automatically queue things to craft"] = ""
-- L["Setup TSM to automatically reset specific markets"] = ""
-- L["Set up TSM to find cheap items on the AH"] = ""
L["Shards"] = "Осколки"
-- L["Shift-Click an item in the sidebar window to immediately post it at your quick posting price."] = ""
-- L["Shift-Click Item in Your Bags"] = ""
L["Show Bids in Auction Results Table (Requires Reload)"] = "Ставки в таблице результатов (нужен перезапуск)"
-- L["Show the 'Custom Filter' Sidebar Tab"] = ""
-- L["Show the 'Other' Sidebar Tab"] = ""
L["Show the Queue"] = "Показать очередь" -- Needs review
-- L["Show the 'Quick Posting' Sidebar Tab"] = ""
-- L["Show the 'TSM Groups' Sidebar Tab"] = ""
L["Show Ungrouped Items for Adding to Subgroups"] = "Показывать предметы без Группы для добавления их в Подгруппы"
L["%s is a valid custom price but did not give a value for %s."] = "%s допустимая цена, но не даЭкспорт настроек внешнего видает величину %s."
L["%s is a valid custom price but %s is an invalid item."] = "%s допустимая цена, но %s недопустимый предмет."
L["%s is not a valid custom price and gave the following error: %s"] = "%s недопустимая цена, ошибка: %s"
L["Skipping auction which no longer exists."] = "Пропустить несуществующие аукционы."
L["Slash Commands:"] = "Команды:"
L["%sLeft-Click|r to select / deselect this group."] = "%sЛКМ для выбора, отмены выбора группы"
L["%sLeft-Click%s to open the main window"] = "%sЛевый клик%s для открытия главного окна"
L["Small Text Size (Requires Reload)"] = "Малый размер текста"
-- L["Snipe items as they are being posted to the AH"] = ""
-- L["Sniping Scan in Progress"] = ""
L["%s operation(s):"] = "%s Операция(и):"
L["Sources"] = "Источники" -- Needs review
L["%sRight-Click|r to collapse / expand this group."] = "%sПКМ для того чтобы свернуть, развернуть группу"
L["Stack Size"] = "Размер пачки"
L["stacks of"] = "пачка из"
-- L["Start a Destroy Search"] = ""
-- L["Start Sniper"] = ""
-- L["Start Vendor Search"] = ""
L["Status / Credits"] = "Статус / Благодарности"
L["Store Operations Globally"] = "Хранить операции в глобальном масштабе"
L["Subgroup Items:"] = "Предметы Подгруппы:"
L["Subgroups contain a subset of the items in their parent groups and can be used to further refine how different items are treated by TSM's modules."] = "Подгруппа содержит перечень предметов из Родительских Групп и может быть использована для улучшения результативности обработки модулями TSM"
L["Successfully imported %d items to %s."] = "Успешно импортированы Предметы из %d в %s."
-- L["Successfully imported operation settings."] = ""
-- L["Switch to Destroy Mode"] = ""
L["Switch to New Custom Price Source After Creation"] = "Переключиться на новый источник цен после создания" -- Needs review
L["Switch to New Group After Creation"] = "Переключиться на новую Группу послее ее создания"
-- L["Switch to the 'Professions' Tab"] = ""
-- L["Switch to the 'TSM Groups' Tab"] = ""
L["Target Operation"] = "Цель Операции"
L["Testers (Special Thanks):"] = "Тестеры (особая благодарность):"
L["Text:"] = "Текст:"
L["The default tab shown in the 'BankUI' frame."] = "Вкладка по умолчанию при открытии 'BankUI'."
-- L["The final set of posting settings are under the 'Posting Price Settings' header. These define the price ranges which Auctioning will post your items within. Read the tooltips of the individual settings to see what they do and set them appropriately."] = ""
-- L["The first set of posting settings are under the 'Auction Settings' header. These control things like stack size and auction duration. Read the tooltips of the individual settings to see what they do and set them appropriately."] = ""
L["The Functional Gold Maker (by Xsinthis - The Golden Crusade)"] = "The Functional Gold Maker (by Xsinthis - The Golden Crusade)"
--[==[ L[ [=[The 'Maxium Auction Price (per item)' is the most you want to pay for the items you've added to your group. If you're not sure what to set this to and have TSM_AuctionDB installed (and it contains data from recent scans), you could try '90% dbmarket' for this option.

Once you're done adjusting this setting, click the button below.]=] ] = "" ]==]
--[==[ L[ [=[The 'Max Restock Quantity' defines how many of each item you want to restock up to when using the restock queue, taking your inventory into account.

Once you're done adjusting this setting, click the button below.]=] ] = "" ]==]
L["Theme Name"] = "Имя темы"
L["Theme name is empty."] = "Имя темы пусто."
L["The name can ONLY contain letters. No spaces, numbers, or special characters."] = "Название может содержать ТОЛЬКО буквы. Без пробелов, чисел или символов." -- Needs review
L["There are no visible banks."] = "Нет доступных банков"
-- L["There is only one price level and seller for this item."] = ""
-- L["The second set of posting settings are under the 'Auction Price Settings' header. These include the percentage of the buyout which the bid will be set to, and how much you want to undercut by. Read the tooltips of the individual settings to see what they do and set them appropriately."] = ""
-- L["These settings control when TSM_Auctioning will cancel your auctions. Read the tooltips of the individual settings to see what they do and set them appropriately."] = ""
--[==[ L[ [=[The 'Sniper' feature will constantly search the last page of the AH which shows items as they are being posted. This does not search existing auctions, but lets you buy items which are posted cheaply right as they are posted and buy them before anybody else can.

You can adjust the settings for what auctions are shown in TSM_Shopping's options.

Click the button below when you're done reading this.]=] ] = "" ]==]
L["This allows you to export your appearance settings to share with others."] = "Позволяет экспортировать настройки внешнего вида, чтобы поделиться с другими."
L["This allows you to import appearance settings which other people have exported."] = "Возможность импортировать настройка внешнего вида "
L["This dropdown determines the default tab when you visit a group."] = "Это выпадающее меню определяет закладку по умолчанию при открытии Группы."
L["This group already has operations. Would you like to add another one or replace the last one?"] = "Эта Группа уже содержит Операции. Вы действительно хотите добавить новую или заменить старую?"
L["This group already has the max number of operation. Would you like to replace the last one?"] = "Эта Группа содержит максимально количество Операций. Вы действительно хотите заменить последнюю?"
L["This operation will be ignored when you're on any character which is checked in this dropdown."] = "Эта Операция будет игнорироваться для персонажей выбранных в этом списке."
-- L["This option sets which tab TSM and its modules will use for printing chat messages."] = ""
L["Time Left"] = "Осталось времени"
L["Title"] = "Название"
L["Toggles the bankui"] = "Включение  'BankUI'"
L["Tooltip Options"] = "Настройки подсказок"
L["Tracks and manages your inventory across multiple characters including your bags, bank, and guild bank."] = "Отслеживает и управляет вашим инвентарём на разных персонажах, включая ваши сумки, банк и гильд банк."
L["TradeSkillMaster Error Window"] = "TSM Окно ошибок"
L["TradeSkillMaster Info:"] = "Информация о TSM:"
L["TradeSkillMaster Team"] = "Команда TradeSkillMaster"
L["TSM Appearance Options"] = "Параметры внешнего вида TSM "
L["TSM Assistant"] = "TSM Помощник" -- Needs review
L["TSM Classic (by Jim Younkin - Power Word: Gold)"] = "Классика TSM (Jim Younkin - Power Word: Gold)"
L["TSMDeck (by Jim Younkin - Power Word: Gold)"] = "TSMDeck (by Jim Younkin - Power Word: Gold)"
L["/tsm help|r - Shows this help listing"] = "/tsm help|r - Показать помощь"
L["TSM Info / Help"] = "TSM Инфо / Помощь"
L["/tsm|r - opens the main TSM window."] = "/tsm|r - главное окно TSM."
L["TSM Status / Options"] = "TSM Статус/Настройки "
L["TSM Version Info:"] = "TSM Версия:"
L["TUJ GE - Market Average"] = "TUJ GE - Среднерыночная"
L["TUJ GE - Market Median"] = "TUJ GE - Market Median"
L["TUJ RE - Market Price"] = "TUJ RE - Рыночная цена"
L["TUJ RE - Mean"] = "TUJ RE - Mean"
-- L["Type a raw material you would like to obtain via destroying in the search bar and start the search. For example: 'Ink of Dreams' or 'Spirit Dust'."] = ""
L["Type in the name of a new operation you wish to create with the same settings as this operation."] = "Наберите имя новой Операции, которую вы хотите создать на осное настроек этой Операции."
L["Type '/tsm' or click on the minimap icon to open the main TSM window."] = "Напишите \"/tsm\" или нажмите на иконку на миникарте для открытия окна TSM." -- Needs review
L["Type '/tsm sources' to print out all available price sources."] = "Напечатайте '/tsm sources' для вывода всех доступных цен для ресурса."
L["Unbalanced parentheses."] = "Незакрытые скобки."
-- L["Underneath the 'Posting Options' header, there are two settings which control the Quick Posting feature of TSM_Shopping. The first one is the duration which Quick Posting should use when posting your items to the AH. Change this to your preferred duration for Quick Posting."] = ""
-- L["Underneath the 'Posting Options' header, there are two settings which control the Quick Posting feature of TSM_Shopping. The second one is the price at which the Quick Posting will post items to the AH. This should generally not be a fixed gold value, since it will apply to every item. Change this setting to what you'd like to post items at with Quick Posting."] = ""
-- L["Underneath the serach bar at the top of the 'Shopping' AH tab are a handful of buttons which change what's displayed in the sidebar window. Click on the 'Custom Filter' one."] = ""
-- L["Underneath the serach bar at the top of the 'Shopping' AH tab are a handful of buttons which change what's displayed in the sidebar window. Click on the 'Other' one."] = ""
-- L["Underneath the serach bar at the top of the 'Shopping' AH tab are a handful of buttons which change what's displayed in the sidebar window. Click on the 'TSM Groups' one."] = ""
-- L["Under the search bar, on the left, you can switch between normal and destroy mode for TSM_Shopping. Switch to 'Destroy Mode' now."] = ""
L["Ungrouped Items:"] = "Предметы без Групп"
L["Usage: /tsm price <ItemLink> <Price String>"] = "Использование: /tsm price <Предмет> <Цена>"
-- L["Use an existing group"] = ""
-- L["Use a subset of items from an existing group by creating a subgroup"] = ""
L["Use the button below to delete this group. Any subgroups of this group will also be deleted, with all items being returned to the parent of this group or removed completely if this group has no parent."] = "Нажмите кнопку ниже, для удаления этой Группы. Все Подгруппы этой Группы будут так же удалены, или возвращены в Родительские Группы если таковые имееются."
L["Use the editbox below to give this group a new name."] = "Используйте поле ввода, чтобы дать Группе новое имя."
L["Use the group box below to move this group and all subgroups of this group. Moving a group will cause all items in the group (and its subgroups) to be removed from its current parent group and added to the new parent group."] = "Используйте меню ниже, чтобы переместить эту группу и все подгруппы этой группы. Перемещение группы вызовет пермещение предметов из Группы (и ее Подгрупп), и текущей Родительской Группы в новую Родительскую Группу."
L["Use the options below to change and tweak the appearance of TSM."] = "Используйте параметры ниже, чтобы изменить и настроить внешний вид TSM."
L["Use the tabs above to select the module for which you'd like to configure operations and general options."] = "Используйте вкладки сверху, чтобы выбрать модуль, для которого вы хотите настроить Операции и общие параметры."
L["Use the tabs above to select the module for which you'd like to configure tooltip options."] = "Используйте вкладки сверху, чтобы выбрать модуль, для которого вы хотите настроить подсказки."
L["Using our website you can get help with TSM, suggest features, and give feedback."] = "С помощью нашего сайта вы можете получить помощь по TSM, высказать ваши предложения и оставить отзывы."
L["Various modules can sync their data between multiple accounts automatically whenever you're logged into both accounts."] = "Различные модули могут синхронизировать свои данные между несколькими учетными записями автоматически всякий раз, когда вы вошли."
L["Vendor Buy Price:"] = "Купить у торговца:"
L["Vendor Buy Price x%s:"] = "Цена покупки у Торговца x%s:"
L["Vendor Sell Price:"] = "Продать торговцу:"
L["Vendor Sell Price x%s:"] = "Продать торговцу  x%s:"
L["Version:"] = "Версия:"
-- L["View current auctions and choose what price to post at"] = ""
L["View Operation Options"] = "Настройки Операции"
L["Visit %s for information about the different TradeSkillMaster modules as well as download links."] = "Посетите %s для информации о различных модулях TSM и скачивания"
-- L["Waiting for Scan to Finish"] = ""
L["Web Master and Addon Developer:"] = "Веб-мастер и Addon Разработчик:"
-- L["We will add a %s operation to this group through its 'Operations' tab. Click on that tab now."] = ""
-- L["We will add items to this group through its 'Items' tab. Click on that tab now."] = ""
-- L["We will import items into this group using the import list you have."] = ""
-- L["What do you want to do?"] = ""
--[==[ L[ [=[When checked, random enchants will be ignored for ungrouped items.

NB: This will not affect parent group items that were already added with random enchants

If you have this checked when adding an ungrouped randomly enchanted item, it will act as all possible random enchants of that item.]=] ] = "" ]==]
L["When clicked, makes this group a top-level group with no parent."] = "При выборе, сделает эту Группу независимой от Родительских Групп"
L["Would you like to add this new operation to %s?"] = "Вы действительно хотите добавить новую Операцию для %s?"
L["Wrong number of item links."] = "Недействительный ID предмета "
-- L["You appear to be attempting to import an operation from a different module."] = ""
L["You can change the active database profile, so you can have different settings for every character."] = "Вы можете сменить активную базу данных Профиля, это позволит вам иметь различные настройки для всех ваших персонажей."
--[==[ L[ [=[You can craft items either by clicking on rows in the queue which are green (meaning you can craft all) or blue (meaning you can craft some) or by clicking on the 'Craft Next' button at the bottom.

Click on the button below when you're done reading this. There is another guide which tells you how to buy mats required for your queue.]=] ] = "" ]==]
L["You can either create a new profile by entering a name in the editbox, or choose one of the already exisiting profiles."] = "Вы можете создать новый Профиль, или использовать уже существующие Профили."
-- L["You can hold shift while clicking this button to remove the items from ALL groups rather than keeping them in the parent group (if one exists)."] = ""
--[==[ L[ [=[You can look through the tooltips of the other options to see what they do and decide if you want to change their values for this operation.

Once you're done, click on the button below.]=] ] = "" ]==]
L["You cannot create a profile with an empty name."] = "Вы не можете создать профайл с пустым именем"
L["You cannot use %s as part of this custom price."] = "Вы не можете использовать %s как часть пользовательской цены." -- Needs review
--[==[ L[ [=[You can now use the buttons near the bottom of the TSM_Crafting window to create this craft.

Once you're done, click the button below.]=] ] = "" ]==]
--[==[ L[ [=[You can use the filters at the top of the page to narrow down your search and click on a column to sort by that column. Then, left-click on a row to add one of that item to the queue, and right-click to remove one.

Once you're done adding items to the queue, click the button below.]=] ] = "" ]==]
--[==[ L[ [=[You can use this sidebar window to help build AH searches. You can also type the filter directly in the search bar at the top of the AH window.

Enter your filter and start the search.]=] ] = "" ]==]
L["You currently don't have any groups setup. Type '/tsm' and click on the 'TradeSkillMaster Groups' button to setup TSM groups."] = "В данный момент Вы не имеете настроенных Групп. Откройте главное окно TSM, вкладка Группы для их настройки."
L["You have closed the bankui. Use '/tsm bankui' to view again."] = "Вы закрыли BankUI. Используйте команду '/tsm bankui' чтобы снова его открыть."
L["You have successfully completed this guide. If you require further assistance, visit out our website:"] = "Вы успешно завершили это обучение. Если вам понадобится помощь, посетите наш сайт: " -- Needs review
