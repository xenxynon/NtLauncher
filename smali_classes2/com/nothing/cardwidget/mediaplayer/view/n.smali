.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/view/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/n;->g:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/n;->g:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->d(Landroid/widget/TextView;)V

    return-void
.end method
