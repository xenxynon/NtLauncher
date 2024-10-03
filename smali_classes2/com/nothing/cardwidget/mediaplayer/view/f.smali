.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/palette/graphics/Palette$PaletteAsyncListener;


# instance fields
.field public final synthetic a:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/f;->a:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    iput p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/f;->b:I

    return-void
.end method


# virtual methods
.method public final onGenerated(Landroidx/palette/graphics/Palette;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/f;->a:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/f;->b:I

    invoke-static {v0, p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->f(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;ILandroidx/palette/graphics/Palette;)V

    return-void
.end method
