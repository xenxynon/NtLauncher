.class public final synthetic Ld3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/b;->g:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    iput-object p2, p0, Ld3/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld3/b;->g:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    iget-object p0, p0, Ld3/b;->h:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->d(Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;Ljava/lang/String;)V

    return-void
.end method
