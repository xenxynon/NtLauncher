.class public final synthetic Lq/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/pm/UserCache;

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/e;->g:Lcom/android/launcher3/pm/UserCache;

    iput-object p2, p0, Lq/e;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lq/e;->g:Lcom/android/launcher3/pm/UserCache;

    iget-object p0, p0, Lq/e;->h:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/launcher3/pm/UserCache;->b(Lcom/android/launcher3/pm/UserCache;Ljava/lang/Runnable;)V

    return-void
.end method
