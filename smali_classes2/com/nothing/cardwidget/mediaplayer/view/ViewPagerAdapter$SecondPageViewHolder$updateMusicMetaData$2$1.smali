.class final Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$2$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->updateMusicMetaData(Ln2/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/graphics/drawable/Drawable;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$2$1;->$this_with:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$2$1;->invoke(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$2$1;->$this_with:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
