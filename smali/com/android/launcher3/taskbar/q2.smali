.class public final synthetic Lcom/android/launcher3/taskbar/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/q2;->g:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/q2;->g:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->a(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
