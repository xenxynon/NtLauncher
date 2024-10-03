.class public final synthetic Lcom/android/quickstep/r8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/r8;->g:I

    iput p2, p0, Lcom/android/quickstep/r8;->h:I

    iput p3, p0, Lcom/android/quickstep/r8;->i:I

    iput-boolean p4, p0, Lcom/android/quickstep/r8;->j:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/quickstep/r8;->g:I

    iget v1, p0, Lcom/android/quickstep/r8;->h:I

    iget v2, p0, Lcom/android/quickstep/r8;->i:I

    iget-boolean p0, p0, Lcom/android/quickstep/r8;->j:Z

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->V(IIIZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method
