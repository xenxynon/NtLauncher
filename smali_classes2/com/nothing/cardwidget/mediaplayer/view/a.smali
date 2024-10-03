.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

.field public final synthetic i:Ly5/a;


# direct methods
.method public synthetic constructor <init>(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Ly5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/a;->g:I

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/a;->h:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    iput-object p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/a;->i:Ly5/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/a;->g:I

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/a;->h:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/a;->i:Ly5/a;

    invoke-static {v0, v1, p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->b(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Ly5/a;Landroid/view/View;)V

    return-void
.end method
