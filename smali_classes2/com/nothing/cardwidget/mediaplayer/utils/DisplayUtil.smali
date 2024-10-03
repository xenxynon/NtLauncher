.class public final Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

.field public static final MARGIN_BOTTOM:Ljava/lang/String; = "layout_marginBottom"

.field public static final MARGIN_END:Ljava/lang/String; = "layout_marginEnd"

.field public static final MARGIN_LEFT:Ljava/lang/String; = "layout_marginLeft"

.field public static final MARGIN_RIGHT:Ljava/lang/String; = "layout_marginRight"

.field public static final MARGIN_START:Ljava/lang/String; = "layout_marginStart"

.field public static final MARGIN_TOP:Ljava/lang/String; = "layout_marginTop"

.field private static final TAG:Ljava/lang/String; = "DisplayUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-direct {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewMargin(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "layout_marginStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :sswitch_1
    const-string v0, "layout_marginRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :sswitch_2
    const-string v0, "layout_marginLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :sswitch_3
    const-string v0, "layout_marginBottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :sswitch_4
    const-string v0, "layout_marginTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :sswitch_5
    const-string v0, "layout_marginEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x38e2f288 -> :sswitch_5
        -0x38e2ba0e -> :sswitch_4
        0x8daf46e -> :sswitch_3
        0x1c87af0a -> :sswitch_2
        0x74c49379 -> :sswitch_1
        0x74d795bf -> :sswitch_0
    .end sparse-switch
.end method

.method public final setViewPadding(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    :goto_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    :goto_3
    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
