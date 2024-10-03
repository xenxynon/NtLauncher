.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/view/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic a:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Ly5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/o;->a:Ly5/l;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/o;->a:Ly5/l;

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;->a(Ly5/l;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
