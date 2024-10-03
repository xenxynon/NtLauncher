.class public final synthetic Lg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/a;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg/a;->a:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/android/launcher3/util/CellAndSpan;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->a(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    return-void
.end method
