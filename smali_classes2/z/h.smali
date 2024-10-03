.class public final synthetic Lz/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/h;->a:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    iput-object p2, p0, Lz/h;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lz/h;->a:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    iget-object p0, p0, Lz/h;->b:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->h(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
