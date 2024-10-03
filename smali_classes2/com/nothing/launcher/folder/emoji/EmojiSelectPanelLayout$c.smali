.class public final Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$c;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$c;->a:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$c;->a:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    invoke-static {v0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->f(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "emojiRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.nothing.launcher.folder.emoji.view.EmojiRecyclerViewAdapter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lf3/d;

    invoke-virtual {v0, p1}, Lf3/d;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$c;->a:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    invoke-static {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->g(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "gridLayoutManager"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
