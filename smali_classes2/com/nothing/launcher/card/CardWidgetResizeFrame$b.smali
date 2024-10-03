.class public final Lcom/nothing/launcher/card/CardWidgetResizeFrame$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/card/CardWidgetResizeFrame;->k(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Landroid/view/View;

.field final synthetic h:Lcom/nothing/launcher/card/CardWidgetResizeFrame;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$b;->g:Landroid/view/View;

    iput-object p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$b;->h:Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$b;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$b;->h:Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method
