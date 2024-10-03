.class final Lcom/nothing/launcher/card/g$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/card/g;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/card/g;

.field final synthetic h:Lcom/nothing/launcher/card/p;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/card/g;Lcom/nothing/launcher/card/p;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/g$b;->g:Lcom/nothing/launcher/card/g;

    iput-object p2, p0, Lcom/nothing/launcher/card/g$b;->h:Lcom/nothing/launcher/card/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/card/g$b;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 9

    iget-object v0, p0, Lcom/nothing/launcher/card/g$b;->g:Lcom/nothing/launcher/card/g;

    invoke-static {v0}, Lcom/nothing/launcher/card/g;->i(Lcom/nothing/launcher/card/g;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/nothing/launcher/card/g$b;->h:Lcom/nothing/launcher/card/p;

    iget-object v0, p0, Lcom/nothing/launcher/card/g$b;->g:Lcom/nothing/launcher/card/g;

    invoke-static {v0}, Lcom/nothing/launcher/card/g;->g(Lcom/nothing/launcher/card/g;)Lq2/m;

    move-result-object v3

    iget-object v0, p0, Lcom/nothing/launcher/card/g$b;->g:Lcom/nothing/launcher/card/g;

    invoke-static {v0}, Lcom/nothing/launcher/card/g;->i(Lcom/nothing/launcher/card/g;)I

    move-result v4

    iget-object v0, p0, Lcom/nothing/launcher/card/g$b;->g:Lcom/nothing/launcher/card/g;

    invoke-static {v0}, Lcom/nothing/launcher/card/g;->f(Lcom/nothing/launcher/card/g;)Lcom/nothing/launcher/card/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/card/v;->j()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/nothing/cardhost/d;->q(Lcom/nothing/cardhost/d;Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;ZILjava/lang/Object;)Lcom/nothing/cardhost/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/card/g$b;->g:Lcom/nothing/launcher/card/g;

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->f(Lcom/nothing/launcher/card/g;)Lcom/nothing/launcher/card/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nothing/launcher/card/v;->m(Lcom/nothing/cardhost/e;)V

    invoke-static {p0, v1}, Lcom/nothing/launcher/card/g;->j(Lcom/nothing/launcher/card/g;I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->g(Lcom/nothing/launcher/card/g;)Lq2/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->f(Lcom/nothing/launcher/card/g;)Lcom/nothing/launcher/card/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v1

    const-string v2, "launcher.workspace.estimateItemSize(info)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-direct {v2, v4, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput v3, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iput v3, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iput-boolean v5, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->g(Lcom/nothing/launcher/card/g;)Lq2/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->h(Lcom/nothing/launcher/card/g;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->f(Lcom/nothing/launcher/card/g;)Lcom/nothing/launcher/card/v;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
