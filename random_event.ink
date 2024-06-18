VAR random_event_probability = 20

===random_event===
{ random_event_probability < RANDOM(0,100):
    -> new_round
}

{shuffle:
    - 你在公园散步时，发现地上有一个粉色的布袋，里面的东西让你感到害羞。
    {find_item()}
    - 在路上散步时，你看到地上有一个钱包，里面装着一些金币。
    {add_money_text(RANDOM(10,20))}
    - 你在街边散步时，发现一个黑黑的的布袋，里面好像有一些物品。
    {find_item()}
    - 你在家附近的旧书店翻阅二手书时，发现书页中夹着一枚的金币。
    {add_money_text(RANDOM(10,20))}
    - 在某个小巷里散步时，你看到地上有一枚闪闪发光的金币，看起来非常古老且有价值。
    {add_money_text(RANDOM(10,20))}
    - 你在海边的沙滩上漫步，脚下一踢，竟然踢到了一枚埋在沙里的金币。
    {add_money_text(RANDOM(10,20))}
    - 在参加一场朋友聚会后，你被{target_or_text("一名看似友善的陌生人")}灌醉并带回了家，醒来时发现自己被侵犯了。
    {add_libido_text(RANDOM(15,25))}
    - 你在夜晚回家途中，突然被{target_or_text("一名歹徒")}拖入小巷，强行发生了关系。
    {add_libido_text(RANDOM(15,25))}{add_san_text(RANDOM(-15,-5))}
    - 在酒吧认识的一名陌生人对你下药，当你意识模糊时，被其带入酒店中……。
    {add_libido_text(RANDOM(15,25))}
    - 在商场试衣服时，你的包被放在一旁，出来时发现包里的贵重物品不翼而飞。
    {add_money_text(RANDOM(-20,-10))}
    - 夜晚回家途中，你被{target_or_text("一名手持武器的劫匪")}拦住，要求交出所有钱财和物品。
    {add_money_text(RANDOM(-20,-10))}
    - 在银行门口，你刚取完钱，便被{target_or_text("一名戴着面具的劫匪")}抢劫。
    {add_money_text(RANDOM(-20,-10))}
    - 在ATM机取钱时，{target_or_text("一名歹徒")}突然出现，威胁你交出所有现金。
    {add_money_text(RANDOM(-20,-10))}
    - 你正在过马路，突然一辆车急速驶来，差点创到你。
    {add_san_text(RANDOM(-10,-5))}
    - 在理发店理发时，天花板突然掉下一块装饰板，差点砸到你的头上。
    {add_san_text(RANDOM(-10,-5))}
    - 你在厨房做饭时，煤气炉突然爆炸，所幸你迅速反应并没有受伤。
    {add_san_text(RANDOM(-10,-5))}
    - 在地铁站，你看到{target_or_text("一名小偷")}正在偷一位老人的钱包，于是你勇敢地上前制止。
    {add_strength_text(RANDOM(5,15))}
    - 你在公园里散步，突然听到有人呼救，发现一名孩子掉入湖中，你毫不犹豫地跳入水中救人。
    {add_strength_text(RANDOM(5,15))}{add_san_text(RANDOM(5,15))}
    - 在商场里，你目睹一场抢劫，勇敢地按下了报警按钮并与保安一起制服了劫匪。
    {add_strength_text(RANDOM(5,15))}
    - 你在咖啡馆里排队时，和前面的人因为点单问题聊了几句，结果发现对方和你有很多共同点，于是交换了联系方式。
    {add_san_text(RANDOM(5,15))}
    - 在一次朋友的聚会上，你遇到了一位非常有趣的人，聊得非常愉快，彼此留下了深刻的印象。
    {add_san_text(RANDOM(5,15))}
    - 在图书馆找书时，你不小心和旁边的人拿到了同一本书，两人相视一笑，开始了一段美好的对话。
    {add_san_text(RANDOM(5,15))}
    - 你在机场等候登机时，突然发现坐在你旁边的正是一位你非常崇拜的明星。
    {add_san_text(RANDOM(5,15))}
    - 在市中心的一个餐厅用餐时，你偶遇了一位知名作家，鼓起勇气上前要了签名。
    {add_san_text(RANDOM(5,15))}
    - 你在地铁上突然感到晕眩，眼前一黑，倒在了车厢里，被好心人送往医院。
    {add_strength_text(RANDOM(-10,-5))}
    - 你在公园散步时，发现一个哭泣的孩子，问过后得知他找不到父母了，于是你帮忙联系并找到了孩子的家人。
    {add_san_text(RANDOM(5,15))}
    - 在商场购物时，听到广播寻人启事，发现附近有一个迷路的小女孩，于是带她去服务台帮助找家人。
    {add_san_text(RANDOM(5,15))}
    - 在地铁站里，你看到一个焦急的小女孩，经过询问后，帮助他找到了正在找他的父母。
    {add_san_text(RANDOM(5,15))}
}

-> new_round

===function target_or_text(text)===
{ has_target:
    ~ return target
}
~ return text
