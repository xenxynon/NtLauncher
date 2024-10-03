.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/graphics/drawable/Drawable;

.field public final synthetic h:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/i;->g:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/i;->h:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    iput p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/i;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/i;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/i;->h:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/i;->i:I

    invoke-static {v0, v1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->c(Landroid/graphics/drawable/Drawable;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V

    return-void
.end method
