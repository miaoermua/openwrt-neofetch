include $(TOPDIR)/rules.mk

PKG_NAME:=neofetch
PKG_VERSION:=7.1.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/dylanaraps/neofetch.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=v$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_MAINTAINER:=miaoermua <miaoermua@gmail.com>

PKG_SOURCE_DIR := $(TOPDIR)/neofetch

include $(INCLUDE_DIR)/package.mk

define Package/neofetch
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Neofetch - A command-line system information tool
  DEPENDS:=+bash
endef

define Package/neofetch/description
 Neofetch is a command-line system information tool written in bash.
 It displays information about your system in a visually appealing way.
endef

define Build/Compile
  $(MAKE)
endef

define Package/neofetch/install
  $(INSTALL_DIR) $(1)/usr/bin
  $(INSTALL_BIN) $(PKG_SOURCE_DIR)/neofetch $(1)/usr/bin/
endef

$(eval $(call BuildPackage,neofetch))
