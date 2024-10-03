.class public final Lf3/k;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/k$b;,
        Lf3/k$c;,
        Lf3/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lf3/k$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lf3/k$a;

.field private static final g:[I

.field private static final h:[I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf3/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lf3/k$c;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lf3/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf3/k$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lf3/k;->f:Lf3/k$a;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lf3/k;->g:[I

    new-array v0, v0, [I

    const v1, 0x10100a3

    aput v1, v0, v3

    sput-object v0, Lf3/k;->h:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf3/k$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lf3/h;",
            ">;",
            "Lf3/k$c;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emojiTabImageResIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emojiTabChangeListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lf3/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lf3/k;->b:Ljava/util/List;

    iput-object p3, p0, Lf3/k;->c:Lf3/k$c;

    const-string p1, ""

    iput-object p1, p0, Lf3/k;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf3/k$b;Lf3/k;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lf3/k;->e(Lf3/k$b;Lf3/k;ILandroid/view/View;)V

    return-void
.end method

.method private final c(I)I
    .locals 0

    iget-object p0, p0, Lf3/k;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf3/h;

    invoke-virtual {p0}, Lf3/h;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "smileysAndEmotionsCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const p0, 0x7f1200ed

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "travelAndPlacesCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f1200ef

    goto :goto_1

    :sswitch_2
    const-string p1, "animalsAndNatureCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const p0, 0x7f1200e8

    goto :goto_1

    :sswitch_3
    const-string p1, "foodAndDrinkCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const p0, 0x7f1200ea

    goto :goto_1

    :sswitch_4
    const-string p1, "peopleCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const p0, 0x7f1200ec

    goto :goto_1

    :sswitch_5
    const-string p1, "ObjectsCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const p0, 0x7f1200eb

    goto :goto_1

    :sswitch_6
    const-string p1, "ActivitiesAndEventsCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const p0, 0x7f1200e7

    goto :goto_1

    :sswitch_7
    const-string p1, "SymbolsCategory"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const p0, 0x7f1200ee

    goto :goto_1

    :goto_0
    const p0, 0x7f1200e9

    :goto_1
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c7cf427 -> :sswitch_7
        -0x47c3c19f -> :sswitch_6
        -0x1bb8b5ee -> :sswitch_5
        -0x658ab53 -> :sswitch_4
        0x22a8219d -> :sswitch_3
        0x47f02345 -> :sswitch_2
        0x59c7b727 -> :sswitch_1
        0x6e46650b -> :sswitch_0
    .end sparse-switch
.end method

.method private static final e(Lf3/k$b;Lf3/k;ILandroid/view/View;)V
    .locals 0

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf3/k$b;->a()Landroid/widget/ImageView;

    move-result-object p0

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-direct {p1, p2}, Lf3/k;->g(I)V

    iget-object p0, p1, Lf3/k;->c:Lf3/k$c;

    invoke-interface {p0, p2}, Lf3/k$c;->c(I)V

    return-void
.end method

.method private final g(I)V
    .locals 1

    iput p1, p0, Lf3/k;->d:I

    iget-object v0, p0, Lf3/k;->c:Lf3/k$c;

    invoke-interface {v0, p1}, Lf3/k$c;->a(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf3/h;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lf3/k;->b:Ljava/util/List;

    return-object p0
.end method

.method public d(Lf3/k$b;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf3/k$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lf3/k;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/h;

    invoke-virtual {v1}, Lf3/h;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lf3/k$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lf3/k;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lf3/k;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lf3/k$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lf3/k;->d:I

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p1}, Lf3/k$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lf3/k$b;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lf3/k;->g:[I

    goto :goto_1

    :cond_1
    sget-object v1, Lf3/k;->h:[I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Lf3/k$b;->a()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lf3/j;

    invoke-direct {v1, p1, p0, p2}, Lf3/j;-><init>(Lf3/k$b;Lf3/k;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lf3/k$b;
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf3/k$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0082

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context).inf\u2026item_view, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf3/k$b;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lf3/k;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    const-string v0, "categoryName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf3/k;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lf3/k;->e:Ljava/lang/String;

    iget-object v0, p0, Lf3/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lf3/h;

    invoke-virtual {v2}, Lf3/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lf3/h;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lf3/h;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lf3/k;->g(I)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lf3/k$b;

    invoke-virtual {p0, p1, p2}, Lf3/k;->d(Lf3/k$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf3/k;->f(Landroid/view/ViewGroup;I)Lf3/k$b;

    move-result-object p0

    return-object p0
.end method
