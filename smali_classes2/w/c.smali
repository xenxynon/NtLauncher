.class public final synthetic Lw/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/statehandlers/DepthController;

.field public final synthetic h:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/c;->g:Lcom/android/launcher3/statehandlers/DepthController;

    iput-object p2, p0, Lw/c;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw/c;->g:Lcom/android/launcher3/statehandlers/DepthController;

    iget-object p0, p0, Lw/c;->h:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController;->b(Lcom/android/launcher3/statehandlers/DepthController;Landroid/view/View;)V

    return-void
.end method
