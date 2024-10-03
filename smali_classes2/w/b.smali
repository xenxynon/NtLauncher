.class public final synthetic Lw/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->g:Lcom/android/launcher3/statehandlers/DepthController;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 0

    iget-object p0, p0, Lw/b;->g:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p0}, Lcom/android/launcher3/statehandlers/DepthController;->d(Lcom/android/launcher3/statehandlers/DepthController;)V

    return-void
.end method
