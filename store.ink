VAR potion_price = 20
VAR taser_price = 30

VAR blindfold_price = 20
VAR handcuffs_price = 50
VAR gag_price = 30
VAR rope_price = 60
VAR clamps_price = 30
VAR latex_price = 80
VAR painkiller_price = 50

===store===

// 商店描述

道具:

\- {get_item_name(potion)} ({potion_price}£): <>{get_item_desc(potion)}

\- {get_item_name(painkiller)} ({painkiller_price}£): <>{get_item_desc(painkiller)}

\- {get_item_name(taser)} ({taser_price}£): <>{get_item_desc(taser)}

装备:

\- {get_equip_name(blindfold)} ({blindfold_price}£): <>{get_equip_desc(blindfold)}<>（{get_sturdiness_text(blindfold_durability)}）

\- {get_equip_name(handcuffs)} ({handcuffs_price}£): <>{get_equip_desc(handcuffs)}<>（{get_sturdiness_text(handcuffs_durability)}）

\- {get_equip_name(gag)} ({gag_price}£): <>{get_equip_desc(gag)}<>（{get_sturdiness_text(gag_durability)}）

\- {get_equip_name(rope)} ({rope_price}£): <>{get_equip_desc(rope)}<>（{get_sturdiness_text(rope_durability)}）

\- {get_equip_name(clamps)} ({clamps_price}£): <>{get_equip_desc(clamps)}<>（{get_sturdiness_text(clamps_durability)}）

\- {get_equip_name(latex)} ({latex_price}£): <>{get_equip_desc(latex)}<>（{get_sturdiness_text(latex_durability)}）

-> rebuy

===rebuy===

余额: {money}£
{
- money < 20:
    {~你扫了一眼价格，又看了一眼自己的钱包，灰溜溜的跑开了……|你拿起钱包看了看，是时候去工作了……|你掏了掏钱包，在心里发誓下次一定要买到……|你看了看自己空荡荡的钱包，小心的问老板可不可以赊账，你在老板凶恶的目光中离开了……|你掏了掏自己的钱包，心里想到要是有钱就好了……}
- else:
    {~攥着钱包，你开始思考今天的购物清单。|随手触摸到钱包，你决定犒赏自己一番。|摸着钱包，你突然想到了几件一直想买的装备。|钱包在手，心里盘算着该购买哪些心仪已久的装备。|手握钱包，脑海中浮现出几个必买的道具。|你的钱包似乎在诉说，是时候买一些新的装备了。|握着钱包，你决定今天要好好对自己。|钱包在手，购物计划已经在心中成形。|你把钱包放在桌上，开始列出想要购买的东西。|你触摸着钱包的同时，心中已经计划好了去买哪些装备。|拿着钱包，你决定买一些长期会用到的道具。|手中的钱包使你想起那些还没尝试的新道具。|你把钱包塞进口袋，想着今天要购买的装备。|你轻拍着钱包，思考着是否应该买那个心仪已久的道具。|把钱包拿在手上，你决定去看看最近的新商品。|你捏着钱包，已经在脑海里想象怎么使用新道具了。}
}

{ money >= potion_price: 
    + [£ {potion_price}: 购买{get_item_name(potion)}]
        ~ money -= potion_price
        ~ potion_count++
        你购买了{get_item_name(potion)}。
        ~ get_item_picture(potion)
    -> rebuy
}
{ money >= painkiller_price: 
    + [£ {painkiller_price}: 购买{get_item_name(painkiller)}]
        ~ money -= painkiller_price
        ~ painkiller_count++
        你购买了{get_item_name(painkiller)}。
        ~ get_item_picture(painkiller)
    -> rebuy
}
{ money >= taser_price:
    + [£ {taser_price}: 购买{get_item_name(taser)}]
        ~ money -= taser_price
        ~ taser_count++
        你购买了{get_item_name(taser)}。
        ~ get_item_picture(taser)
    -> rebuy
}
{ money >= blindfold_price:
    + [£ {blindfold_price}: 购买{get_equip_name(blindfold)}]
        ~ money -= blindfold_price
        ~ blindfold_count++
        你购买了{get_equip_name(blindfold)}。
        ~ get_equip_picture(blindfold)
    -> rebuy
}
{ money >= handcuffs_price:
    + [£ {handcuffs_price}: 购买{get_equip_name(handcuffs)}]
        ~ money -= handcuffs_price
        ~ handcuffs_count++
        你购买了{get_equip_name(handcuffs)}。
        ~ get_equip_picture(handcuffs)
    -> rebuy
}
{ money >= gag_price:
    + [£ {gag_price}: 购买{get_equip_name(gag)}]
        ~ money -= gag_price
        ~ gag_count++
        你购买了{get_equip_name(gag)}。
        ~ get_equip_picture(gag)
    -> rebuy
}
{ money >= rope_price:
    + [£ {rope_price}: 购买{get_equip_name(rope)}]
        ~ money -= rope_price
        ~ rope_count++
        你购买了{get_equip_name(rope)}。
        ~ get_equip_picture(rope)
    -> rebuy
}
{ money >= clamps_price:
    + [£ {clamps_price}: 购买{get_equip_name(clamps)}]
        ~ money -= clamps_price
        ~ clamps_count++
        你购买了{get_equip_name(clamps)}。
        ~ get_equip_picture(clamps)
    -> rebuy
}
{ money >= latex_price:
    + [£ {latex_price}: 购买{get_equip_name(latex)}]
        ~ money -= latex_price
        ~ latex_count++
        你购买了{get_equip_name(latex)}。
        ~ get_equip_picture(latex)
    -> rebuy
}

+ [返回] -> new_round
