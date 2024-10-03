.class public final synthetic Lcom/android/quickstep/n8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/n8;->g:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/quickstep/n8;->g:F

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->b0(FLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void
.end method
