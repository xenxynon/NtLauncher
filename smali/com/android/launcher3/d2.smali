.class public final synthetic Lcom/android/launcher3/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/util/SettingsCache;

.field public final synthetic h:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/d2;->g:Lcom/android/launcher3/util/SettingsCache;

    iput-object p2, p0, Lcom/android/launcher3/d2;->h:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/d2;->g:Lcom/android/launcher3/util/SettingsCache;

    iget-object p0, p0, Lcom/android/launcher3/d2;->h:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->f(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method
