.class public final synthetic Lcom/android/quickstep/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/s8;->g:I

    iput-boolean p2, p0, Lcom/android/quickstep/s8;->h:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/s8;->g:I

    iget-boolean p0, p0, Lcom/android/quickstep/s8;->h:Z

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->X(IZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method
