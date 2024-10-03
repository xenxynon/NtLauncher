.class public final synthetic Lcom/android/quickstep/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic h:I

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/t0;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput p2, p0, Lcom/android/quickstep/t0;->h:I

    iput-boolean p3, p0, Lcom/android/quickstep/t0;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/t0;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/quickstep/t0;->h:I

    iget-boolean p0, p0, Lcom/android/quickstep/t0;->i:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->Y(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V

    return-void
.end method
