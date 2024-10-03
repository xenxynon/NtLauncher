.class public final synthetic Ln/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/LauncherWidgetHolder;

.field public final synthetic h:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/v1;->g:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iput-object p2, p0, Ln/v1;->h:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln/v1;->g:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget-object p0, p0, Ln/v1;->h:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter;->i(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method
