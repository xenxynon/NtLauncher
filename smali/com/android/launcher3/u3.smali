.class public final synthetic Lcom/android/launcher3/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/QuickstepTransitionManager;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/u3;->g:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/u3;->h:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/launcher3/u3;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/u3;->g:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, p0, Lcom/android/launcher3/u3;->h:Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/launcher3/u3;->i:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager;->e(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V

    return-void
.end method
