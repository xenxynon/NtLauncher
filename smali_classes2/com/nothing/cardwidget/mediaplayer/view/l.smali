.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/view/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;

.field public final synthetic h:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/l;->g:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/l;->h:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/l;->g:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/l;->h:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v0, p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->c(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-void
.end method
