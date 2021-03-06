-- ------------------------------------------------------------------------------ --
--                           TradeSkillMaster_Accounting                          --
--           http://www.curse.com/addons/wow/tradeskillmaster_accounting          --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- TradeSkillMaster_Accounting Locale - zhCN
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Accounting/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Accounting", "zhCN")
if not L then return end

L["Accounting has not yet collect enough information for this tab. This is likely due to not having recorded enough data points or not seeing any significant fluctuations (over 1k gold) in your gold on hand."] = "Accounting还没有为这个标签收集到足够的信息。这可能是由于没有足够的数据点或是您的持有金币量没有大幅波动(1000G以上)。"
L["Activity Type"] = "活动类别"
L["All"] = "所有"
L["Aucs"] = "曲线"
L["Average Prices:"] = "平均价："
L["Avg Buy Price"] = "平均买入价"
L["Avg Resale Profit"] = "平均转卖利润"
L["Avg Sell Price"] = "平均售价"
L["Back to Previous Page"] = "返回上一页"
L["Balance"] = "结算"
L[ [=[Below is a graph of the current character's gold on hand over time.

The x-axis is time and goes from %s to %s
The y-axis is thousands of gold.]=] ] = [=[下图是当前人物金币-时间表
X轴是从%s到%s的时间轴
Y轴是金币数量(千金)]=]
L["Bought"] = "已买入"
L["Buyer/Seller"] = "买家/卖家"
L["Cancelled"] = "已取消"
L["Cancelled Since Last Sale:"] = "自上次售出之后取消拍卖:"
L["Clear Old Data"] = "清除旧数据"
L["Click for a detailed report on this item."] = "点击生成该物品的详细报告。"
L["Click this button to permanently remove data older than the number of days selected in the dropdown."] = "点击此按钮 来永久性删除下拉列表中此天数之前的数据。" -- Needs review
L["Cost"] = "花费"
L["Data older than this many days will be deleted when you click on the button to the right."] = "当您点击右侧的按钮时会删除该天数之前的数据。"
L["Days:"] = "天数:"
L["DD/MM/YY HH:MM"] = "日/月/年 小时:分钟"
L["Display Grey Items in Sales"] = "在销售页面显示灰色品质物品"
L["Don't prompt to record trades"] = "不再提示交易信息"
L["Earned Per Day:"] = "每天赚取："
L["Expenses"] = "支出"
L["Expired"] = "已流拍"
L["Expired Since Last Sale:"] = "自上次售出之后的流拍:"
L["Failed Auctions"] = "拍卖失败"
L["Failed Since Last Sale (Expired/Cancelled):"] = "自上次售出之后的失败(流拍/取消):"
L["General Options"] = "通用选项" -- Needs review
L["Gold Earned:"] = "赚取金币："
L["Gold Spent:"] = "花费金币："
L["Group"] = "分组"
L["_ Hr _ Min ago"] = "_ 小时 _ 分钟之前"
L["If checked, poor quality items will be shown in sales data. They will still be included in gold earned totals on the summary tab regardless of this setting"] = "如果勾选,灰色品质物品将会在销售数据里显示。无论勾选与否,他们都将加进赚取金币总额里。"
L["If checked, the average purchase price that shows in the tooltip will be the average price for the most recent X you have purchased, where X is the number you have in your bags / bank / gbank using data from the ItemTracker module. Otherwise, a simple average of all purchases will be used."] = "如果勾选此项,鼠标提示信息里显示的平均收购价 将会是您最近购买的数量的平均收购价,这个数量是ItemTracker模块数据里的您的背包/银行/公会银行的数量。否则,会使用所有采购的平均收购价。"
L["If checked, the number of cancelled auctions since the last sale will show as up as failed auctions in an item's tooltip. if no sales then the total number of cancelled auctions will be shown."] = "如果勾选, 取消拍卖次数会作为自上次售出以来的失败拍卖显示在物品鼠标提示中. 如果没有售出的情况下,显示的次数就是取消拍卖次数。"
L["If checked, the number of expired auctions since the last sale will show as up as failed auctions in an item's tooltip. if no sales then the total number of expired auctions will be shown."] = "如果勾选, 流拍次数会作为自上次售出以来的失败拍卖显示在物品鼠标提示中. 如果没有售出的情况下,显示的次数就是流拍次数。"
L["If checked, the number you have purchased and the average purchase price will show up in an item's tooltip."] = "如果勾选，物品的鼠标提示中将显示该物品你的购买数量与购买均价。"
L["If checked, the number you have sold and the average sale price will show up in an item's tooltip."] = "如果勾选，物品的鼠标提示中将显示该物品你的销售数量与销售均价。"
L["If checked, the sale rate will be shown in item tooltips. sale rate is calculated as total sold / (total sold + total expired + total cancelled)."] = "如果勾选, 出售率会显示在物品鼠标提示上。出售率 = 售出总数/(售出总数+流拍次数+取消拍卖次数)"
L["If checked, whenever you buy or sell any quantity of a single item via trade, Accounting will display a popup asking if you want it to record that transaction."] = "如果勾选, 当您通过交易方式购买或出售物品时, Accounting 弹出确认框询问是否保存交易记录。"
L["If checked, you won't get a popup confirmation about whether or not to track trades."] = "如果勾选,将不会弹出是否追踪交易的确认框。"
L["Income"] = "收入"
L["Item Name"] = "物品名称"
L["Items"] = "物品"
L["Last 14 Days"] = "最近14天"
L["Last 30 Days"] = "最近30天"
L["Last 30 Days:"] = "最近30天："
L["Last 60 Days"] = "最近60天"
L["Last 7 Days"] = "最近7天"
L["Last 7 Days:"] = "最近7天："
L["Last Purchase"] = "最近购买"
L["Last Purchased:"] = "上次购买:"
L["Last Sold"] = "最近售出"
L["Last Sold:"] = "上次售出:"
L["Market Value"] = "市场价"
L["Market Value Source"] = "市场价来源"
L["MM/DD/YY HH:MM"] = "月/日/年 小时:分钟"
L["none"] = "无"
L["None"] = "无"
L["Options"] = "选项"
L["Other"] = "其他"
L["Other Income"] = "其他收入"
L["Player"] = "角色"
L["Player Gold"] = "玩家金币"
L["Player(s)"] = "角色"
L["Price Per Item"] = "物品单价"
L["Profit:"] = "利润:"
L["Profit Per Day:"] = "日平均利润:"
L["Purchase Data"] = "购买数据"
L["Purchased (Avg Price):"] = "购买(平均价):"
L["Purchased (Total Price):"] = "购买(总价):"
L["Purchases"] = "购买数量"
L["Quantity"] = "数量"
L["Quantity Bought:"] = "买入数量"
L["Quantity Sold:"] = "售出数量"
L["Rarity"] = "稀有度"
L["Removed a total of %s old records and %s items with no remaining records."] = "已移除 %s 条旧记录 和  %s 个无剩余记录的物品."
L["Remove Old Data (No Confirmation)"] = "清除旧数据 (无确认提示)"
L["Resale"] = "转卖"
L["Revenue"] = "手续费"
L["%s ago"] = "%s 之前"
L["Sale Data"] = "出售数据"
L["Sale Rate:"] = "出售率:"
L["Sales"] = "出售数量"
L["Search"] = "搜索"
L["Select how you would like prices to be shown in the \"Items\" and \"Resale\" tabs; either average price per item or total value."] = "选择\"物品\"和\"转卖\"标签里价格的显示方式,可以是每种物品的平均价格或总价格。"
L["Select what format Accounting should use to display times in applicable screens."] = "请选择Accounting使用何种时间显示格式。"
L["Select where you want Accounting to get market value info from to show in applicable screens."] = "请选择Accounting从何处获取市场价信息。"
L["Show Cancelled Auctions as Failed Auctions since Last Sale in item tooltips"] = "将取消拍卖算在物品鼠标提示上的\"上次售出以来的失败拍卖\""
L["Show Expired Auctions as Failed Auctions since Last Sale in item tooltips"] = "将流拍算在物品鼠标提示上的\"上次售出以来的失败拍卖\""
L["Show purchase info in item tooltips"] = "在物品的鼠标提示中显示购买信息"
L["Show sale info in item tooltips"] = "在物品的鼠标提示中显示销售信息"
L["Show Sale Rate in item tooltips"] = "在物品鼠标提示中显示交易率"
L["Sold"] = "售出"
L["Sold (Avg Price):"] = "售出(平均价):"
L["Sold (Total Price):"] = "售出(总价):"
L["Source"] = "来源"
L["Spent Per Day:"] = "日花费:"
L["Stack"] = "堆叠"
L["Summary"] = "摘要"
L["Target"] = "目标"
L["There is no purchase data for this item."] = "该物品无购买数据。"
L["There is no sale data for this item."] = "该物品无销售数据。"
L["Time"] = "时间"
L["Time Format"] = "时间格式"
L["Timeframe Filter"] = "时间筛选器"
L["Today"] = "今天"
L["Top Buyers:"] = "最高出价者："
L["Top Expense by Gold:"] = "最高金币支出:"
L["Top Expense by Quantity:"] = "最高数量支出:"
L["Top Income by Gold:"] = "最高金币收入:"
L["Top Income by Quantity:"] = "最高数量收入:"
L["Top Item by Gold:"] = "最贵物品:" -- Needs review
L["Top Item by Quantity:"] = "数量最多物品：:" -- Needs review
L["Top Sellers:"] = "卖家排名:"
L["Total:"] = "总计："
L["Total Buy Price"] = "买入总价"
L["Total Price"] = "总价"
L["Total Sale Price"] = "出售总价"
L["Total Spent:"] = "总花费:"
L["Total Value"] = "总价值" -- Needs review
L["Track sales/purchases via trade"] = "追踪通过交易方式进行的出售/购买"
L["TSM_Accounting detected that you just traded %s %s in return for %s. Would you like Accounting to store a record of this trade?"] = "TSM_Accounting 检测到您进行了一笔%s %s的交易, 交易金额为%s。您希望保留此次交易记录吗?"
L["Type"] = "类型"
L["Use smart average for purchase price"] = "购买价格使用智能均价"
L["Yesterday"] = "昨天"
L[ [=[You can use the options below to clear old data. It is recommened to occasionally clear your old data to keep Accounting running smoothly. Select the minimum number of days old to be removed in the dropdown, then click the button.

NOTE: There is no confirmation.]=] ] = [=[您可以使用以下的选项来清除旧的数据. 推荐您定期清除数据来保持插件运行流畅。选择您要清除的旧数据的天数, 然后点击按钮。

注意: 此操作无确认提示。]=]
L["YY/MM/DD HH:MM"] = "年/月/日 小时:分钟"
 