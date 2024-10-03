.class public final Ly1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/f$a;
    }
.end annotation


# static fields
.field public static final j:Ly1/f$a;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Lx1/i;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly1/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly1/f$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ly1/f;->j:Ly1/f$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "infoJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/f;->g:Lorg/json/JSONObject;

    iput-object p2, p0, Ly1/f;->h:Lx1/i;

    sget-object p2, Li2/j;->a:Li2/j$a;

    invoke-virtual {p2}, Li2/j$a;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Ly1/f;->i:I

    return-void
.end method

.method public static synthetic a(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/f;->h(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/f;->i(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p8}, Ly1/f;->k(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic d(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-static/range {p0 .. p8}, Ly1/f;->l(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ly1/f;->j(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final synthetic f(Ly1/f;)Lx1/i;
    .locals 0

    iget-object p0, p0, Ly1/f;->h:Lx1/i;

    return-object p0
.end method

.method private static final h(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/view/View;)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$simulatedResult"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$handler"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly1/f;->h:Lx1/i;

    invoke-interface {p0, p1, p2, p3}, Lx1/i;->d(Landroid/view/View;Lc2/e;Lw1/a;)V

    return-void
.end method

.method private static final i(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/view/View;)Z
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$simulatedResult"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$handler"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly1/f;->h:Lx1/i;

    invoke-interface {p0, p1, p2, p3}, Lx1/i;->b(Landroid/view/View;Lc2/e;Lw1/a;)Z

    move-result p0

    return p0
.end method

.method private static final j(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$simulatedResult"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$handler"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly1/f;->h:Lx1/i;

    invoke-interface {p0, p1, p5, p2, p3}, Lx1/i;->h(Landroid/view/View;ZLc2/e;Lw1/a;)V

    return-void
.end method

.method private static final k(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$simulatedResult"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$handler"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly1/f;->h:Lx1/i;

    invoke-interface {p0, p1, p6, p2, p3}, Lx1/i;->a(Landroid/view/View;ILc2/e;Lw1/a;)V

    return-void
.end method

.method private static final l(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$target"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$simulatedResult"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$handler"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly1/f;->h:Lx1/i;

    invoke-interface {p0, p1, p6, p2, p3}, Lx1/i;->c(Landroid/view/View;ILc2/e;Lw1/a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public g(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget p2, p0, Ly1/f;->i:I

    const/4 p3, -0x1

    if-eq p3, p2, :cond_7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Ly1/f;->g:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    const-string p3, "infoJson.keys()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Ly1/f;->g:Lorg/json/JSONObject;

    const-string p6, "key"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, p3}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    new-instance p6, Lc2/e;

    invoke-direct {p6, p5}, Lc2/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p5

    sparse-switch p5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p5, "on_checked_changed"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    instance-of p3, p1, Landroid/widget/CompoundButton;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/widget/CompoundButton;

    new-instance p5, Ly1/e;

    invoke-direct {p5, p0, p1, p6, p4}, Ly1/e;-><init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V

    invoke-virtual {p3, p5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :sswitch_1
    const-string p5, "on_click"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p3, Ly1/a;

    invoke-direct {p3, p0, p1, p6, p4}, Ly1/a;-><init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_2
    const-string p5, "on_list_item_long_click"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    instance-of p3, p1, Landroid/widget/AbsListView;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/widget/AbsListView;

    new-instance p5, Ly1/d;

    invoke-direct {p5, p0, p1, p6, p4}, Ly1/d;-><init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V

    invoke-virtual {p3, p5}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    :sswitch_3
    const-string p5, "registerOnPageChangeCallback"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    instance-of p3, p1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    new-instance p5, Ly1/f$b;

    invoke-direct {p5, p0, p1, p6}, Ly1/f$b;-><init>(Ly1/f;Landroid/view/View;Lc2/e;)V

    invoke-virtual {p3, p5}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    goto/16 :goto_0

    :sswitch_4
    const-string p5, "on_long_click"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance p3, Ly1/b;

    invoke-direct {p3, p0, p1, p6, p4}, Ly1/b;-><init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    :sswitch_5
    const-string p5, "on_list_item_click"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto/16 :goto_0

    :cond_6
    instance-of p3, p1, Landroid/widget/AbsListView;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/widget/AbsListView;

    new-instance p5, Ly1/c;

    invoke-direct {p5, p0, p1, p6, p4}, Ly1/c;-><init>(Ly1/f;Landroid/view/View;Lc2/e;Lw1/a;)V

    invoke-virtual {p3, p5}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    :cond_7
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6d1cbac3 -> :sswitch_5
        -0x1a2fa79b -> :sswitch_4
        0x8b75406 -> :sswitch_3
        0x9042b70 -> :sswitch_2
        0x6d521328 -> :sswitch_1
        0x6e9f07bc -> :sswitch_0
    .end sparse-switch
.end method
