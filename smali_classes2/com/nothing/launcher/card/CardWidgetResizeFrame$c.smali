.class public final Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/card/CardWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/android/launcher3/CellLayout;

.field final synthetic h:Z

.field final synthetic i:Lcom/android/launcher3/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;->g:Lcom/android/launcher3/CellLayout;

    iput-boolean p2, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;->h:Z

    iput-object p3, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;->i:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;->g:Lcom/android/launcher3/CellLayout;

    iget-boolean v0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;->h:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    iget-object p1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;->i:Lcom/android/launcher3/CellLayout;

    iget-boolean p0, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame$c;->h:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    return-void
.end method
