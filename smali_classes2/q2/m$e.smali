.class public final Lq2/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/m;->completeAddCardWidget(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/card/r;

.field final synthetic h:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lq2/m$e;->g:Lcom/nothing/launcher/card/r;

    iput-object p2, p0, Lq2/m$e;->h:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object p1, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->W:Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;

    iget-object p2, p0, Lq2/m$e;->g:Lcom/nothing/launcher/card/r;

    iget-object p3, p0, Lq2/m$e;->h:Lcom/android/launcher3/CellLayout;

    const-string p4, "cellLayout"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq2/m$e;->h:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, p2, p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;->b(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method
