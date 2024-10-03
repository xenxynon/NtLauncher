.class public final Lcom/nothing/launcher/folder/customisation/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/folder/customisation/g$a;,
        Lcom/nothing/launcher/folder/customisation/g$b;,
        Lcom/nothing/launcher/folder/customisation/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nothing/launcher/folder/customisation/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/launcher3/model/data/FolderInfo;

.field private final b:Ly5/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/q<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/launcher/folder/customisation/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;Ly5/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            "Ly5/q<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/g;->a:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p2, p0, Lcom/nothing/launcher/folder/customisation/g;->b:Ly5/q;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    iget-object p2, p1, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-static {p2}, La4/d;->e(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "custom:emoji"

    if-eqz p2, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/g;->d:Ljava/lang/String;

    invoke-static {}, La4/d;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    if-gez p2, :cond_1

    invoke-static {}, Lo5/j;->m()V

    :cond_1
    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    new-instance v5, Lcom/nothing/launcher/folder/customisation/a;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v2, v6

    invoke-direct {v5, v1, v2, p2}, Lcom/nothing/launcher/folder/customisation/a;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/launcher/folder/customisation/g$a;Lcom/nothing/launcher/folder/customisation/g;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/nothing/launcher/folder/customisation/g;->e(Lcom/nothing/launcher/folder/customisation/g$a;Lcom/nothing/launcher/folder/customisation/g;ILandroid/view/View;)V

    return-void
.end method

.method private static final e(Lcom/nothing/launcher/folder/customisation/g$a;Lcom/nothing/launcher/folder/customisation/g;ILandroid/view/View;)V
    .locals 1

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p0, Lcom/nothing/launcher/folder/customisation/g$b;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/nothing/launcher/folder/customisation/g;->b:Ly5/q;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nothing/launcher/folder/customisation/a;

    invoke-virtual {p1}, Lcom/nothing/launcher/folder/customisation/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p3, p1, p2}, Ly5/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/nothing/launcher/folder/customisation/g;->b:Ly5/q;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/launcher/folder/customisation/a;

    invoke-virtual {v0}, Lcom/nothing/launcher/folder/customisation/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p3, v0, p2}, Ly5/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/g;->a:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nothing/launcher/folder/customisation/a;

    invoke-virtual {v2}, Lcom/nothing/launcher/folder/customisation/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nothing/launcher/folder/customisation/g;->a:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/nothing/launcher/folder/customisation/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nothing/launcher/folder/customisation/a;->b()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public d(Lcom/nothing/launcher/folder/customisation/g$a;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/launcher/folder/customisation/a;

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/g;->a:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p1, v0, v1}, Lcom/nothing/launcher/folder/customisation/g$a;->a(Lcom/nothing/launcher/folder/customisation/a;Lcom/android/launcher3/model/data/FolderInfo;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/nothing/launcher/folder/customisation/f;

    invoke-direct {v1, p1, p0, p2}, Lcom/nothing/launcher/folder/customisation/f;-><init>(Lcom/nothing/launcher/folder/customisation/g$a;Lcom/nothing/launcher/folder/customisation/g;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/nothing/launcher/folder/customisation/g$a;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lcom/nothing/launcher/folder/customisation/g$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/nothing/launcher/folder/customisation/g$b;-><init>(Lcom/nothing/launcher/folder/customisation/g;Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/nothing/launcher/folder/customisation/g$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/nothing/launcher/folder/customisation/g$c;-><init>(Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;)V

    :goto_0
    return-object p2
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/g;->d:Ljava/lang/String;

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/g;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/folder/customisation/a;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/a;->a()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/nothing/launcher/folder/customisation/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/folder/customisation/g;->d(Lcom/nothing/launcher/folder/customisation/g$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/folder/customisation/g;->f(Landroid/view/ViewGroup;I)Lcom/nothing/launcher/folder/customisation/g$a;

    move-result-object p0

    return-object p0
.end method
