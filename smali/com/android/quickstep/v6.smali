.class public final synthetic Lcom/android/quickstep/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TaskIconCache;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskIconCache;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v6;->g:Lcom/android/quickstep/TaskIconCache;

    iput-object p2, p0, Lcom/android/quickstep/v6;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quickstep/v6;->i:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/v6;->g:Lcom/android/quickstep/TaskIconCache;

    iget-object v1, p0, Lcom/android/quickstep/v6;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/quickstep/v6;->i:Landroid/os/UserHandle;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/TaskIconCache;->b(Lcom/android/quickstep/TaskIconCache;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
