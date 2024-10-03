.class public final synthetic Lcom/android/launcher3/uioverrides/flags/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/a;->g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;

    iput-boolean p2, p0, Lcom/android/launcher3/uioverrides/flags/a;->h:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/a;->g:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/flags/a;->h:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->b(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;ZLandroid/view/View;)V

    return-void
.end method
