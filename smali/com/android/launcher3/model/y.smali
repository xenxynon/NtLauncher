.class public final synthetic Lcom/android/launcher3/model/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/ItemInstallQueue;

.field public final synthetic h:Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

.field public final synthetic i:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/y;->g:Lcom/android/launcher3/model/ItemInstallQueue;

    iput-object p2, p0, Lcom/android/launcher3/model/y;->h:Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    iput-object p3, p0, Lcom/android/launcher3/model/y;->i:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/y;->g:Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/android/launcher3/model/y;->h:Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/y;->i:Ljava/lang/Exception;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ItemInstallQueue;->e(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    return-void
.end method
