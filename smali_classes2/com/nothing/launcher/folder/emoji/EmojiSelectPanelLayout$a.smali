.class public final Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "folderCustomisationView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e0084

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.folder.emoji.EmojiSelectPanelLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p0, p2}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->j(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    invoke-static {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->h(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V

    return-object p0
.end method
