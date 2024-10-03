.class public final synthetic Lcom/android/launcher3/touch/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/Launcher;

.field public final synthetic h:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/h;->g:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/touch/h;->h:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/touch/h;->g:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/touch/h;->h:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->b(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
