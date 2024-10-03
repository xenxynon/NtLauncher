.class public final synthetic Lcom/android/launcher3/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/Workspace;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/u4;->g:Lcom/android/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher3/u4;->h:Z

    iput-object p3, p0, Lcom/android/launcher3/u4;->i:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/u4;->g:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/launcher3/u4;->h:Z

    iget-object p0, p0, Lcom/android/launcher3/u4;->i:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/Workspace;->A(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V

    return-void
.end method
