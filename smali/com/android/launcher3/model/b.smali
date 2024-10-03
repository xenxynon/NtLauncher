.class public final synthetic Lcom/android/launcher3/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/b;->g:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/b;->g:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->i(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method
