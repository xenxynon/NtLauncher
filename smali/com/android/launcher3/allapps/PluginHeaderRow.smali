.class public Lcom/android/launcher3/allapps/PluginHeaderRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# instance fields
.field private final mPlugin:Li0/a;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Li0/a;Lcom/android/launcher3/allapps/FloatingHeaderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Li0/a;

    invoke-interface {p1, p2}, Li0/a;->j(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Li0/a;

    invoke-interface {p0}, Li0/a;->getExpectedHeight()I

    move-result p0

    return p0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/launcher3/allapps/PluginHeaderRow;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/android/launcher3/allapps/PluginHeaderRow;

    return-object p0
.end method

.method public hasVisibleContent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setVerticalScroll(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .locals 0

    return-void
.end method

.method public shouldDraw()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
