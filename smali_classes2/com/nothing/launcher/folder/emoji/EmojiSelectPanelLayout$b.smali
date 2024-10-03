.class final Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/String;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$b;->g:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$b;->g:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    invoke-static {p0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->i(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$b;->a(Ljava/lang/String;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
