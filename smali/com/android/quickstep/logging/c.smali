.class public final synthetic Lcom/android/quickstep/logging/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/logging/SettingsChangeLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/logging/SettingsChangeLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/c;->g:Lcom/android/quickstep/logging/SettingsChangeLogger;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/logging/c;->g:Lcom/android/quickstep/logging/SettingsChangeLogger;

    invoke-static {p0, p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->h(Lcom/android/quickstep/logging/SettingsChangeLogger;Z)V

    return-void
.end method
