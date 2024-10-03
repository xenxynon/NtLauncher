.class public final Lf3/d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lf3/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf3/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lf3/l;

.field private d:I

.field private e:I

.field private f:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "-",
            "Ljava/lang/String;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lf3/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf3/e;",
            ">;",
            "Landroid/content/Context;",
            "Lf3/l;",
            ")V"
        }
    .end annotation

    const-string v0, "unicodeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedEmojiInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lf3/d;->a:Ljava/util/List;

    iput-object p2, p0, Lf3/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lf3/d;->c:Lf3/l;

    const/4 p1, -0x1

    iput p1, p0, Lf3/d;->d:I

    iput p1, p0, Lf3/d;->e:I

    return-void
.end method

.method public static synthetic a(Lf3/d$a;Lf3/d;ILf3/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lf3/d;->h(Lf3/d$a;Lf3/d;ILf3/e;Landroid/view/View;)V

    return-void
.end method

.method private final b(I)Lf3/e;
    .locals 0

    iget-object p0, p0, Lf3/d;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf3/e;

    return-object p0
.end method

.method private final g(Lf3/d$a;I)V
    .locals 3

    invoke-virtual {p1}, Lf3/d$a;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lf3/d;->b(I)Lf3/e;

    move-result-object v1

    invoke-virtual {v1}, Lf3/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lf3/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lf3/d;->c:Lf3/l;

    invoke-virtual {v2}, Lf3/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf3/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iput p2, p0, Lf3/d;->e:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    new-instance v2, Lf3/c;

    invoke-direct {v2, p1, p0, p2, v1}, Lf3/c;-><init>(Lf3/d$a;Lf3/d;ILf3/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final h(Lf3/d$a;Lf3/d;ILf3/e;Landroid/view/View;)V
    .locals 0

    const-string p4, "$holder"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$emojiItem"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf3/d$a;->a()Landroid/widget/TextView;

    move-result-object p0

    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-direct {p1, p2}, Lf3/d;->i(I)V

    invoke-virtual {p3}, Lf3/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lf3/e;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, La4/d;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p4, p1, Lf3/d;->c:Lf3/l;

    invoke-virtual {p4, p0}, Lf3/l;->e(Ljava/lang/String;)V

    iget-object p4, p1, Lf3/d;->c:Lf3/l;

    invoke-virtual {p4, p2}, Lf3/l;->f(I)V

    iget-object p2, p1, Lf3/d;->c:Lf3/l;

    invoke-virtual {p3}, Lf3/e;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lf3/l;->d(Ljava/lang/String;)V

    iget-object p1, p1, Lf3/d;->f:Ly5/l;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final i(I)V
    .locals 1

    iput p1, p0, Lf3/d;->d:I

    iget v0, p0, Lf3/d;->e:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget p1, p0, Lf3/d;->d:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget p1, p0, Lf3/d;->d:I

    iput p1, p0, Lf3/d;->e:I

    :cond_0
    return-void
.end method

.method private final j(Lf3/d$a;I)V
    .locals 3

    invoke-virtual {p1}, Lf3/d$a;->b()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf3/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p2}, Lf3/d;->b(I)Lf3/e;

    move-result-object v0

    invoke-virtual {v0}, Lf3/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "smileysAndEmotionsCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const v0, 0x7f1200ed

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "travelAndPlacesCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f1200ef

    goto :goto_2

    :sswitch_2
    const-string v1, "animalsAndNatureCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f1200e8

    goto :goto_2

    :sswitch_3
    const-string v1, "foodAndDrinkCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const v0, 0x7f1200ea

    goto :goto_2

    :sswitch_4
    const-string v1, "peopleCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const v0, 0x7f1200ec

    goto :goto_2

    :sswitch_5
    const-string v1, "ObjectsCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const v0, 0x7f1200eb

    goto :goto_2

    :sswitch_6
    const-string v1, "ActivitiesAndEventsCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const v0, 0x7f1200e7

    goto :goto_2

    :sswitch_7
    const-string v1, "SymbolsCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const v0, 0x7f1200ee

    goto :goto_2

    :goto_1
    const v0, 0x7f1200e9

    :goto_2
    iget-object v1, p0, Lf3/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lf3/d;->b(I)Lf3/e;

    move-result-object p0

    invoke-virtual {p0}, Lf3/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_9
    return-void

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


# virtual methods
.method public final c(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lf3/d;->b(I)Lf3/e;

    move-result-object p0

    invoke-virtual {p0}, Lf3/e;->b()Lf3/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object p1, Lf3/b;->g:Lf3/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(Lf3/d$a;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lf3/d;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lf3/d;->j(Lf3/d$a;I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lf3/d;->g(Lf3/d$a;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lf3/d$a;
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf3/d$a;

    sget-object v0, Lf3/b;->g:Lf3/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0081

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0080

    :goto_0
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "when (viewType) {\n      \u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf3/d$a;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final f(Ly5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/String;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lf3/d;->f:Ly5/l;

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lf3/d;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lf3/d;->b(I)Lf3/e;

    move-result-object p0

    invoke-virtual {p0}, Lf3/e;->b()Lf3/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lf3/d$a;

    invoke-virtual {p0, p1, p2}, Lf3/d;->d(Lf3/d$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf3/d;->e(Landroid/view/ViewGroup;I)Lf3/d$a;

    move-result-object p0

    return-object p0
.end method
