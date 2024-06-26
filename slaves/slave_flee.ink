===slave_flee===

/- 赎出自己：向主人缴纳 150 金币，立即获得自由。
/- 偷偷逃跑：成功率与理智成正比例。
/- 偷袭主人：主人理智低于 30 时生效，成功率与主人理智成反比。

+ [赎出自己] 

~ money -= 150
~ set_target(owner_id)
{add_money(-150)}{add_target_money_text(150)}

{shuffle:
    - 你走进主人的房间，低下头，双手捧着一袋金币，眼神中充满乞求：“主人，这是你所有的积蓄，请您放你自由。”
    - 你跪在主人面前，将一袋金币递给他，声音颤抖：“主人，这是你为自由积攒的金币，求您放你一条生路。”
    - 你的手指紧紧攥着金币袋，眼中泛起泪光：“主人，这些金币是你所有的财富，只求您能给你自由。”
    - 你怯生生地看着主人，将沉甸甸的金币袋递上：“主人，你愿意用这些金币换取自由，求求您了。”
    - 你跪在地上，将金币袋高举过头：“主人，这些金币是你辛苦积攒的，希望能换来您的仁慈。”
    - 你双手奉上金币袋，声音颤抖：“主人，这是你所有的财富，只求您能放你自由。”
    - 你的眼神中充满期待，将沉甸甸的金币袋递给主人：“主人，请您收下这些金币，给你一条生路吧。”
    - 你双膝跪地，将金币袋递给主人，声音颤抖：“主人，你愿意用这些金币换取自由，请您成全你。”
    - 你低垂着头，将金币袋递上：“主人，这些金币是你所有的积蓄，只求您能放你自由。”
    - 你双手奉上金币袋，声音哽咽：“主人，你愿意用这些金币换取自由，请您给你一个机会。”
}


-> new_round

+ [偷偷逃跑]

成功：
{shuffle:
    - 你小心翼翼地推开房门，心跳如雷。夜色笼罩下，你感到自己仿佛与黑暗融为一体。每一步都显得如此艰难和危险，但自由的渴望驱使着你前进。你悄无声息地穿过走廊，屏住呼吸，终于成功逃离了这片地狱。夜风迎面吹来，你感受到前所未有的自由。
    - 天空中繁星点点，微弱的星光成为你的指引。你趁主人不注意，迅速穿过庭院。冷风袭来，你却感到无比的自由，仿佛重生一般。你穿过树林，听着远处的虫鸣声，终于成功逃脱了他的掌控，开始了新的生活。
    - 你悄悄地翻过窗户，心跳加速。夜晚的寂静给予你掩护，每一声轻微的响动都让你紧张不已。你一口气跑了好远，终于成功逃脱了主人的束缚，望着远处的灯光，你感觉到自由的曙光正在向你招手。
    - 你看准时机，偷偷从后门溜出。黑夜中，你感到一阵解脱的轻松，终于逃离了这个让你痛苦的地方。奔跑在荒野中，耳边的风声让你感到无比畅快，你知道自己终于自由了。
    - 你在夜幕的掩护下，小心翼翼地离开了房间。每一步都仿佛走在刀尖上，心中的恐惧和希望交织在一起。奔跑在荒野中，你感到自由的空气扑面而来，终于成功逃脱了这段痛苦的回忆。
    - 黑夜是你的盟友，你悄然无声地从窗户爬出。冷风吹过，你跑进了树林，脚下的树叶发出沙沙的声响，仿佛在为你的自由欢呼。你终于摆脱了主人的控制，开始了新的生活。
    - 你趁夜深人静，悄悄地溜出了房间。逃进森林，你感到前所未有的自由，心中那份久违的轻松让你几乎要流下泪来。你终于成功逃脱了，未来充满了希望。
    - 你趁主人熟睡，悄悄地从床边溜走。穿过寂静的走廊，你的心跳声仿佛敲击在耳边。最终，你感到无比的自由，终于逃离了这个地狱般的地方，新的生活在前方等待着你。
    - 夜晚的风吹在脸上，你偷偷溜出了房间。跑进黑暗的街道，你终于感到自由，成功逃脱了主人的束缚。你抬头望着星空，未来充满了无限可能。
    - 你趁夜色掩护，小心翼翼地离开了房间。奔跑在寂静的夜里，你的每一步都踏在希望之上。你终于摆脱了主人的掌控，感受到前所未有的自由，前方的路途虽然未知，但你充满了勇气。
}

失败：
{shuffle:
    - 你刚推开房门，就听到身后传来的脚步声。主人迅速将你抓住，他的手像铁钳一样紧紧握住你，冷笑着将你拖回了房间。他的眼神中充满了怒火，你知道逃跑计划彻底失败了，你的心中充满了恐惧和绝望。
    - 黑暗中，你正悄悄溜出房间，突然被主人逮个正着。他的脸上露出阴冷的笑容，愤怒地把你拖回来。他的手劲之大让你无力反抗，逃跑失败让你感到深深的无助和恐惧。
    - 你刚翻出窗户，主人的影子便出现在眼前。他冷冷地笑着，仿佛早已料到你的动作。抓住你的手腕，他将你硬生生地拖回去，逃跑计划彻底泡汤，你的心中充满了绝望。
    - 你刚踏出庭院，突然被主人逮住。他怒不可遏地将你带回房间，眼神中闪烁着怒火。他的手劲让你无力反抗，逃跑计划彻底失败，你的心中充满了恐惧和无奈。
    - 你正悄悄溜出房间，突然被主人发现。他冷笑着把你拖回去，眼中充满了愤怒和惩罚的意味。逃跑计划彻底破灭，你的心中充满了恐惧和绝望。
    - 你刚迈出房门，主人的手就抓住了你。他愤怒地将你带回去，眼神中充满了惩罚的意味。逃跑计划彻底失败，你的心中充满了恐惧和无助。
    - 你正偷偷溜出房间，突然被主人逮个正着。他冷笑着把你抓回去，眼神中充满了愤怒和惩罚的意味。逃跑计划彻底失败，你的心中充满了绝望。
    - 你刚翻出窗户，主人的手就紧紧抓住了你。他愤怒地将你带回去，眼神中充满了惩罚的意味。逃跑计划彻底失败，你的心中充满了恐惧和无奈。
    - 你刚踏出庭院，主人的手就把你抓住。他冷笑着将你带回去，眼神中充满了愤怒和惩罚的意味。逃跑计划彻底失败，你的心中充满了绝望。
    - 你正悄悄溜出房间，突然被主人发现。他愤怒地将你带回去，眼神中充满了惩罚的意味。逃跑计划彻底破灭，你的心中充满了恐惧和绝望。
}



-> new_round

+ [偷袭主人] -> slave_battle