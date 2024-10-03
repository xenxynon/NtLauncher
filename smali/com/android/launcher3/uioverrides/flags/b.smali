.class public final synthetic Lcom/android/launcher3/uioverrides/flags/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/b;->g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/b;->g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->a(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
