.class public final synthetic Lcom/android/launcher3/touch/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/touch/BaseSwipeDetector;

.field public final synthetic h:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/touch/BaseSwipeDetector;Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/f;->g:Lcom/android/launcher3/touch/BaseSwipeDetector;

    iput-object p2, p0, Lcom/android/launcher3/touch/f;->h:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/touch/f;->g:Lcom/android/launcher3/touch/BaseSwipeDetector;

    iget-object p0, p0, Lcom/android/launcher3/touch/f;->h:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->a(Lcom/android/launcher3/touch/BaseSwipeDetector;Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    return-void
.end method
