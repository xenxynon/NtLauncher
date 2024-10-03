.class public final synthetic Lz/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/e;->a:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    iput-object p2, p0, Lz/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lz/e;->a:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    iget-object p0, p0, Lz/e;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->f(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
