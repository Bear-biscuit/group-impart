===remake===

少女折寿中...

你生前是<>

{ shuffle:
	- 	油腻社畜 {add_money_text(20)}{add_san_text(-10)}
	- 	24岁大学生 {add_san_text(20)}{add_money_text(-10)}
	-   鬼畜筋肉男 {add_strength_text(10)}{add_san_text(-20)}
	-   黄毛体育生 {add_libido_text(20)}{add_san_text(-10)}
	-   不知名少女偶像 {add_libido_text(10)}{add_strength_text(-10)}
}<>。

你死于<>

{ shuffle:
	- 	泥头车 {add_money_text(20)}
	- 	玉玉症 {add_san_text(20)}
	-   纵欲过度 {add_san_text(10)}{add_libido_text(-10)}
	-   被魅魔榨干 {add_libido_text(10)}{add_san_text(5)}
	-   变态跟踪狂 {add_strength_text(10)}{add_san_text(-10)}
	-   自然灾害 {add_san_text(10)}{add_strength_text(-10)}
	-   劳累过度 {add_money_text(40)}{add_san_text(-20)}{add_strength_text(-10)}
}<>。

是时候转生了！

你生前作恶多端。神明决定将你发配到{group}成为美少女。

转生后会获得 {init_item_count} 个初始道具。

+ [与神明交易（额外初始道具）]

你和神明进行了不可告人的秘密交易。

{add_init_item_count(2)}{add_libido_text(20)}{add_money_text(-50)}

-> show_attrs

+ [与神明战斗（提升战斗力）]

你被轻而易举制服了，作为惩罚...

{add_strength_text(20)}{add_libido_text(20)}{add_init_item_count(-1)}

-> show_attrs


+ [接受现实]

-> show_attrs


===show_attrs===

当前属性:

战斗力: {strength}

理智: {san}

性欲: {libido}

金币: {money}

初始道具数量: {init_item_count}

-> new_round
