.class public final Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lf3/g$b;
.implements Lf3/k$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;


# instance fields
.field private g:Landroidx/recyclerview/widget/RecyclerView;

.field private h:Lf3/a;

.field private i:Lf3/k;

.field private j:Landroid/widget/ImageButton;

.field private k:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

.field private l:Landroidx/recyclerview/widget/RecyclerView;

.field private m:Lf3/d;

.field private n:Landroidx/recyclerview/widget/GridLayoutManager;

.field private o:Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

.field private final p:Lf3/l;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le3/e;",
            ">;"
        }
    .end annotation
.end field

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->s:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lf3/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lf3/l;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/i;)V

    iput-object p2, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p:Lf3/l;

    const/16 p2, 0x9

    new-array p2, p2, [Le3/e;

    new-instance p3, Le3/o;

    const-string v0, "smileysAndEmotionsCategory"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p3, v0, v1, v2, v1}, Le3/o;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x0

    aput-object p3, p2, v0

    new-instance p3, Le3/m;

    const-string v0, "peopleCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/m;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x1

    aput-object p3, p2, v0

    new-instance p3, Le3/c;

    const-string v0, "animalsAndNatureCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/c;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    aput-object p3, p2, v2

    new-instance p3, Le3/i;

    const-string v0, "foodAndDrinkCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/i;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x3

    aput-object p3, p2, v0

    new-instance p3, Le3/s;

    const-string v0, "travelAndPlacesCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/s;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x4

    aput-object p3, p2, v0

    new-instance p3, Le3/a;

    const-string v0, "ActivitiesAndEventsCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/a;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x5

    aput-object p3, p2, v0

    new-instance p3, Le3/k;

    const-string v0, "ObjectsCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/k;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x6

    aput-object p3, p2, v0

    new-instance p3, Le3/q;

    const-string v0, "SymbolsCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/q;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x7

    aput-object p3, p2, v0

    new-instance p3, Le3/g;

    const-string v0, "FlagsCategory"

    invoke-direct {p3, v0, v1, v2, v1}, Le3/g;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    const/16 v0, 0x8

    aput-object p3, p2, v0

    invoke-static {p2}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->q:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->r:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic d(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->r(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->o(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic f(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic g(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->n:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public static final synthetic h(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l()V

    return-void
.end method

.method public static final synthetic i(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic j(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->k:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    return-void
.end method

.method private final k(I)I
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->i:Lf3/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "emojiTabRecyclerViewAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lf3/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf3/h;

    invoke-virtual {p1}, Lf3/h;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->h:Lf3/a;

    if-nez p0, :cond_1

    const-string p0, "emojiCategoryTransformer"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lf3/a;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lo5/d0;->g(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final l()V
    .locals 6

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p:Lf3/l;

    iget-object v1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->k:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "folderCustomisationView"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf3/l;->e(Ljava/lang/String;)V

    new-instance v0, Lf3/a;

    invoke-direct {v0}, Lf3/a;-><init>()V

    iput-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->h:Lf3/a;

    iget-object v1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->q:Ljava/util/List;

    iget-object v3, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p:Lf3/l;

    invoke-virtual {v0, v1, v3}, Lf3/a;->b(Ljava/util/List;Lf3/l;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lf3/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p:Lf3/l;

    invoke-direct {v1, v0, v3, v5}, Lf3/d;-><init>(Ljava/util/List;Landroid/content/Context;Lf3/l;)V

    new-instance v0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$b;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$b;-><init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V

    invoke-virtual {v1, v0}, Lf3/d;->f(Ly5/l;)V

    iput-object v1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->m:Lf3/d;

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "emojiRecyclerView"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->m:Lf3/d;

    if-nez v3, :cond_2

    const-string v3, "emojiRecyclerViewAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x8

    invoke-direct {v0, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    new-instance v1, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$c;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$c;-><init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iput-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->n:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {}, Lf3/i;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lf3/k;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v0, p0}, Lf3/k;-><init>(Landroid/content/Context;Ljava/util/List;Lf3/k$c;)V

    iput-object v1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->i:Lf3/k;

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    const-string v0, "emojiTabRecycleView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->i:Lf3/k;

    if-nez v1, :cond_5

    const-string v1, "emojiTabRecyclerViewAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->q()V

    return-void
.end method

.method private final m()V
    .locals 4

    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.folder_emoji_panel_RecycleView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lf3/g;

    invoke-direct {v0}, Lf3/g;-><init>()V

    iget-object v1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const-string v3, "emojiRecyclerView"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lf3/g;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, p0}, Lf3/g;->b(Lf3/g$b;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.DefaultItemAnimator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method private final n()V
    .locals 7

    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.folder\u2026n_emoji_tab_recyclerView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->g:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "emojiTabRecycleView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5, v2}, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/i;)V

    iput-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->o:Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v4, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->o:Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    if-nez v4, :cond_2

    const-string v4, "tabLinearLayoutManager"

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$d;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$d;-><init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private static final o(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->k:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    if-nez p0, :cond_0

    const-string p0, "folderCustomisationView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->onBackInvoked()V

    return-void
.end method

.method private final p(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->r:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->n:Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p0, :cond_1

    const-string p0, "gridLayoutManager"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private static final r(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->i:Lf3/k;

    if-nez p0, :cond_0

    const-string p0, "emojiTabRecyclerViewAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lf3/k;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final s(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->k:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    if-nez p0, :cond_0

    const-string p0, "folderCustomisationView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->v(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->o:Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    const-string v1, "tabLinearLayoutManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v3, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->o:Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-le p1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_3

    const-string p0, "emojiTabRecycleView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "categoryName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->i:Lf3/k;

    if-nez p0, :cond_0

    const-string p0, "emojiTabRecyclerViewAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lf3/k;->h(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->k(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-direct {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->n()V

    invoke-direct {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->m()V

    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.back_emoji_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    const-string v2, "backButton"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->j:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Ld3/a;

    invoke-direct {v0, p0}, Ld3/a;-><init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p:Lf3/l;

    invoke-virtual {v0}, Lf3/l;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->n:Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    const-string v0, "gridLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p:Lf3/l;

    invoke-virtual {v1}, Lf3/l;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->p:Lf3/l;

    invoke-virtual {v0}, Lf3/l;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ld3/b;

    invoke-direct {v1, p0, v0}, Ld3/b;-><init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 6

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "emojiRecyclerView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public final t()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "emojiRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return-void
.end method
