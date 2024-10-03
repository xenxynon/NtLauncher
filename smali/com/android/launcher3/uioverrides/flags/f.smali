.class public final synthetic Lcom/android/launcher3/uioverrides/flags/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;

.field public final synthetic h:Lcom/android/launcher3/uioverrides/flags/DebugFlag;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/f;->g:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/flags/f;->h:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/f;->g:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/f;->h:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;->a(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$2;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
