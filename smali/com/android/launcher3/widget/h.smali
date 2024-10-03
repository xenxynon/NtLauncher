.class public final synthetic Lcom/android/launcher3/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field public final synthetic h:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/h;->g:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p2, p0, Lcom/android/launcher3/widget/h;->h:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/h;->g:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object p0, p0, Lcom/android/launcher3/widget/h;->h:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->d(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/util/SparseIntArray;)V

    return-void
.end method
