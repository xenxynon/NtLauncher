.class public final synthetic Lcom/android/launcher3/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/Workspace;

.field public final synthetic h:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field public final synthetic i:Lcom/android/launcher3/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s4;->g:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/s4;->h:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/s4;->i:Lcom/android/launcher3/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/s4;->g:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/s4;->h:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object p0, p0, Lcom/android/launcher3/s4;->i:Lcom/android/launcher3/CellLayout;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/Workspace;->B(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method
